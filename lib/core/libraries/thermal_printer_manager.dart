import 'dart:io';
import 'dart:typed_data';

import 'package:esc_pos_bluetooth/esc_pos_bluetooth.dart';
import 'package:esc_pos_utils/esc_pos_utils.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bluetooth_basic/flutter_bluetooth_basic.dart';
import 'package:image/image.dart';
import 'package:injectable/injectable.dart';

import '../../data/remote/response/transaction/closing_response.dart';
import '../../domain/entities/print/print_data.dart';
import '../../domain/entities/print/print_order_data.dart';
import '../constants/image_asset.dart';
import '../constants/strings.dart';
import '../utils/date_util.dart';
import '../utils/utils.dart';

@injectable
class ThermalPrinterManager {
  final PrinterBluetoothManager _printerBluetoothManager;
  final BluetoothManager _bluetoothManager;

  ThermalPrinterManager(this._printerBluetoothManager, this._bluetoothManager);

  Stream<int?> get bluetoothState => _bluetoothManager.state;

  Stream<bool> get isScanning => _bluetoothManager.isScanning;

  Stream<List<PrinterBluetooth>> get scanResults => _printerBluetoothManager.scanResults;

  Stream<bool> get isScanningStream => _printerBluetoothManager.isScanningStream;

  void startScanPrinter({Duration timeout = const Duration(seconds: 4)}) {
    _printerBluetoothManager.startScan(timeout);
  }

  void stopScanPrinter() {
    _printerBluetoothManager.stopScan();
  }

  void stopScanBluetooth() {
    _bluetoothManager.stopScan();
  }

  Future<bool> isConnected() async {
    if (Platform.isAndroid) {
      return await _bluetoothManager.isConnected;
    }
    return _printerBluetoothManager.getIsConnected();
  }

  Future<PosPrintResult> startPrint({
    required PrinterBluetooth printer,
    required PrintData? printData,
    required ClosingResponse? closingResponse,
  }) async {
    if (printData == null && closingResponse == null) {
      return PosPrintResult.ticketEmpty;
    }

    try {
      _printerBluetoothManager.selectPrinter(printer);

      final _ticket = printData != null
          ? await _orderTicket(printData: printData)
          : await _closingTicket(closingResponse: closingResponse!);

      final _posPrintResult = await _printerBluetoothManager.printTicket(_ticket,
          timeoutInSeconds: 120, queueSleepTimeMs: 10, chunkSizeBytes: 200);

      return _posPrintResult;
    } on Exception catch (_) {
      return PosPrintResult.timeout;
    }
  }

  Future<List<int>> _orderTicket({
    PaperSize paper = PaperSize.mm58,
    CapabilityProfile? profile,
    required PrintData printData,
  }) async {
    profile ??= await CapabilityProfile.load();

    final ticket = Generator(paper, profile);
    List<int> _bytes = [];

    if (printData.isPrinted) {
      _bytes += ticket.text(
        'Copied',
        styles: const PosStyles(align: PosAlign.right, bold: true, fontType: PosFontType.fontA),
        linesAfter: 1,
      );
    }

    // Header section
    final ByteData data = await rootBundle.load(ImageAsset.logoMsGlowReceipt);
    final Uint8List bytes = data.buffer.asUint8List();
    final Image? image = decodeImage(bytes);
    if (image != null) _bytes += ticket.imageRaster(image);

    // _bytes += ticket.feed(1);

    _bytes += ticket.text(
      'BEAUTYY GLOW',
      styles: const PosStyles(
        fontType: PosFontType.fontA,
        align: PosAlign.center,
        height: PosTextSize.size1,
        width: PosTextSize.size1,
      ),
      // linesAfter: 1,
    );

    final Image? _subtitleLogoImage = await getImage(ImageAsset.imgSubtitleLogoReceipt);
    // Contacts section
    final Image? contactIG = await getImage(ImageAsset.imgContactReceiptIG);
    final Image? contactWA = await getImage(ImageAsset.imgContactReceiptWA);
    final Image? contactWA2 = await getImage(ImageAsset.imgContactReceiptWA2);

    if (_subtitleLogoImage != null) _bytes += ticket.imageRaster(_subtitleLogoImage);

    _bytes += ticket.feed(1);

    _bytes += ticket.text(
      'Ruko MS GLOW BY BEAUTYYGLOW\n${printData.cashierData?.userRole?.merchant?.address ?? ''}',
      styles: const PosStyles(
        align: PosAlign.center,
      ),
      linesAfter: 1,
    );

    _bytes += ticket.hr();

    // Order info section
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Waktu',
          width: 4,
        ),
        PosColumn(
          text: ': ${DateUtil.dateTimeToFormattedDate(
            DateTime.now().toLocal(),
            datePattern: 'dd/MM/yyyy, HH:mm',
          )}',
          width: 8,
        ),
      ],
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Pelanggan',
          width: 4,
        ),
        PosColumn(
          text: ': ${printData.customer?.fullName ?? Strings.nonMember}',
          width: 8,
        ),
      ],
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Kasir',
          width: 4,
        ),
        PosColumn(
          text: ': ${printData.cashierName}',
          width: 8,
        ),
      ],
    );

    _bytes += ticket.hr();

    // product info table title section
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Pesanan',
          width: 6,
          styles: const PosStyles(
            bold: true,
          ),
        ),
        PosColumn(
          text: 'Total',
          width: 6,
          styles: const PosStyles(
            bold: true,
            align: PosAlign.right,
          ),
        ),
      ],
    );

    _bytes += ticket.hr();

    // product info list item section
    for (PrintOrderData orderData in printData.orderData) {
      // final name = orderData.isPreOrder == true ? "(Pre-Order)${orderData.name}" : orderData.name;
      _bytes += ticket.text(orderData.name);
      if (orderData.note != null) {
        _bytes += ticket.text(orderData.note ?? '');
      }
      _bytes += ticket.row(
        [
          PosColumn(
            text: '${orderData.quantity.toString()}x',
            width: 3,
          ),
          PosColumn(
            text: orderData.totalIdr,
            width: 9,
            styles: const PosStyles(
              align: PosAlign.right,
            ),
          ),
        ],
      );
    }

    // for packages item
    for (PrintOrderData orderData in printData.orderPackages) {
      _bytes += ticket.text(orderData.name);
      if (orderData.note != null) {
        _bytes += ticket.text(orderData.note ?? '');
      }
      _bytes += ticket.row(
        [
          PosColumn(
            text: '${orderData.quantity.toString()}x',
            width: 3,
          ),
          PosColumn(
            text: orderData.totalIdr,
            width: 9,
            styles: const PosStyles(
              align: PosAlign.right,
            ),
          ),
        ],
      );
    }

    // for custom product items
    for (PrintOrderData orderData in printData.orderCustom) {
      _bytes += ticket.text(orderData.name);
      if (orderData.note != null) {
        _bytes += ticket.text(orderData.note ?? '');
      }
      _bytes += ticket.row(
        [
          PosColumn(
            text: '${orderData.quantity.toString()}x',
            width: 3,
          ),
          PosColumn(
            text: orderData.totalIdr,
            width: 9,
            styles: const PosStyles(
              align: PosAlign.right,
            ),
          ),
        ],
      );
    }

    _bytes += ticket.hr();

    // Subtotal & discount section
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Subtotal',
          width: 4,
        ),
        PosColumn(
          text: printData.subtotalIdr,
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
          ),
        ),
      ],
    );

    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Diskon',
          width: 4,
        ),
        PosColumn(
          text: printData.discountIdr,
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
          ),
        ),
      ],
    );

    _bytes += ticket.hr();

    // Total & payment section
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Total',
          width: 4,
          styles: const PosStyles(
            bold: true,
          ),
        ),
        PosColumn(
          text: printData.totalIdr,
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
          ),
        ),
      ],
    );

    _bytes += ticket.feed(1);

    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Metode Pembayaran',
          width: 8,
        ),
        PosColumn(
          text: capitalizeFirstofEach(printData.paymentMethod),
          width: 4,
          styles: const PosStyles(
            align: PosAlign.right,
          ),
        ),
      ],
    );

    if (printData.isCashPaymentMethod) {
      _bytes += ticket.row(
        [
          PosColumn(
            text: 'Tunai',
            width: 4,
          ),
          PosColumn(
            text: printData.cashAmountIdr,
            width: 8,
            styles: const PosStyles(
              align: PosAlign.right,
            ),
          ),
        ],
      );

      _bytes += ticket.row(
        [
          PosColumn(
            text: 'Kembali',
            width: 4,
          ),
          PosColumn(
            text: printData.kembaliInIdr,
            width: 8,
            styles: const PosStyles(
              align: PosAlign.right,
            ),
          ),
        ],
      );
    }

    _bytes += ticket.hr();

    // Note section
    _bytes += ticket.text(
      'Note',
    );
    _bytes += ticket.text(
      'Barang yang sudah dibeli tidak',
    );
    _bytes += ticket.text(
      'dapat ditukar/dikembalikan,',
    );
    _bytes += ticket.text(
      'kecuali ada perjanjian,',
    );
    _bytes += ticket.text(
      'terima kasih :)',
    );

    _bytes += ticket.feed(2);

    _bytes += ticket.text(
      'Kritik dan Saran',
      styles: const PosStyles(
        align: PosAlign.center,
      ),
    );
    _bytes += ticket.qrcode('https://beautyyglow.com/feedback');

    _bytes += ticket.feed(2);

    //contacts
    if (contactIG != null) _bytes += ticket.imageRaster(contactIG);
    if (contactWA != null) _bytes += ticket.imageRaster(contactWA);
    if (contactWA2 != null) _bytes += ticket.imageRaster(contactWA2);
    // _bytes += ticket.row(
    //   [
    //     PosColumn(
    //       text: 'WA 0853424XXX ',
    //       width: 6,
    //       styles: const PosStyles(
    //         align: PosAlign.right,
    //       ),
    //     ),
    //     PosColumn(
    //       text: ' IG Beautyyglow',
    //       width: 6,
    //     ),
    //   ],
    // );

    _bytes += ticket.feed(4);

    ticket.cut();

    return _bytes;
  }

  // Closing ticker
  Future<List<int>> _closingTicket({
    PaperSize paper = PaperSize.mm58,
    CapabilityProfile? profile,
    required ClosingResponse closingResponse,
  }) async {
    profile ??= await CapabilityProfile.load();

    final ticket = Generator(paper, profile);
    List<int> _bytes = [];

    // Header section
    final ByteData data = await rootBundle.load(ImageAsset.logoMsGlowReceipt);
    final Uint8List bytes = data.buffer.asUint8List();
    final Image? image = decodeImage(bytes);
    if (image != null) _bytes += ticket.imageRaster(image);

    // _bytes += ticket.feed(1);

    _bytes += ticket.text(
      'BEAUTYY GLOW',
      styles: const PosStyles(
        fontType: PosFontType.fontA,
        align: PosAlign.center,
        height: PosTextSize.size1,
        width: PosTextSize.size1,
      ),
      // linesAfter: 1,
    );

    final ByteData _subtitleLogoData = await rootBundle.load(ImageAsset.imgSubtitleLogoReceipt);
    final Uint8List _subtitleLogoBytes = _subtitleLogoData.buffer.asUint8List();
    final Image? _subtitleLogoImage = decodeImage(_subtitleLogoBytes);
    if (_subtitleLogoImage != null) _bytes += ticket.imageRaster(_subtitleLogoImage);

    _bytes += ticket.feed(1);

    final _shiftPrint = closingResponse.struk?.shiftPrint;

    _bytes += ticket.text(
      'Ruko MS GLOW BY BEAUTYYGLOW\n${_shiftPrint?.address ?? ''}',
      styles: const PosStyles(
        fontType: PosFontType.fontA,
        align: PosAlign.center,
      ),
      linesAfter: 1,
    );

    _bytes += ticket.hr();

    // Shift print section
    _bytes += ticket.text(
      'SHIFT PRINT',
      styles: const PosStyles(
        fontType: PosFontType.fontA,
        align: PosAlign.center,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ),
      linesAfter: 1,
    );

    _bytes += ticket.text(
        'Start Date : ${DateUtil.dateTimeToFormattedDate(
          _shiftPrint?.startDate,
          datePattern: 'yyyy/MM/dd',
        )}',
        styles: const PosStyles(
          fontType: PosFontType.fontA,
        ));
    _bytes += ticket.text(
        'End Date : ${DateUtil.dateTimeToFormattedDate(
          _shiftPrint?.endDate,
          datePattern: 'yyyy/MM/dd',
        )}',
        styles: const PosStyles(
          fontType: PosFontType.fontA,
        ));
    _bytes += ticket.text('Sold Items : ${_shiftPrint?.soldItems ?? '-'}',
        styles: const PosStyles(
          fontType: PosFontType.fontA,
        ));
    _bytes += ticket.text('Refunded Items : ${_shiftPrint?.refundItems ?? '-'}',
        styles: const PosStyles(
          fontType: PosFontType.fontA,
        ));

    _bytes += ticket.hr();

    // Transaction detail section (Income)
    final _transactionDetails = closingResponse.struk?.transactionDetail;
    _bytes += ticket.text(
      'INCOME',
      styles: const PosStyles(
        align: PosAlign.center,
        fontType: PosFontType.fontA,
      ),
      linesAfter: 1,
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Pesanan',
          width: 6,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: 'Total',
          width: 6,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
            align: PosAlign.right,
          ),
        ),
      ],
    );

    // product info list item section (income)
    int _total = 0;
    _transactionDetails?.forEach((transactionDetail) {
      _total += transactionDetail.total ?? 0;

      _bytes += ticket.text(transactionDetail.namaBarang ?? '',
          styles: const PosStyles(
            fontType: PosFontType.fontA,
          ));
      _bytes += ticket.row(
        [
          PosColumn(
              text: '${transactionDetail.qty}x',
              width: 3,
              styles: const PosStyles(
                fontType: PosFontType.fontA,
              )),
          PosColumn(
            text: formatToIdr(transactionDetail.total),
            width: 9,
            styles: const PosStyles(
              fontType: PosFontType.fontA,
              align: PosAlign.right,
            ),
          ),
        ],
      );
    });

    _bytes += ticket.hr();
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Total',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_total),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );

    _bytes += ticket.feed(1);

    final _refundedItems = closingResponse.struk?.refundedItems;
    _bytes += ticket.text(
      'REFUNDED ITEM',
      styles: const PosStyles(
        align: PosAlign.center,
        fontType: PosFontType.fontA,
      ),
      linesAfter: 1,
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Item',
          width: 6,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: 'Total',
          width: 6,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
            align: PosAlign.right,
          ),
        ),
      ],
    );

    // product info refunded list item section (refund)
    int _totalRefund = 0;
    _refundedItems?.forEach((refundedItem) {
      _totalRefund += refundedItem.total ?? 0;

      _bytes += ticket.text(refundedItem.namaBarang ?? '',
          styles: const PosStyles(
            fontType: PosFontType.fontA,
          ));
      _bytes += ticket.row(
        [
          PosColumn(
            text: '${refundedItem.qty}x',
            width: 3,
            styles: const PosStyles(
              fontType: PosFontType.fontA,
            ),
          ),
          PosColumn(
            text: formatToIdr(refundedItem.total),
            width: 9,
            styles: const PosStyles(
              fontType: PosFontType.fontA,
              align: PosAlign.right,
            ),
          ),
        ],
      );
    });

    _bytes += ticket.hr();
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Total',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_totalRefund),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );

    _bytes += ticket.feed(1);

    _bytes += ticket.text(
      'OUTCOME',
      styles: const PosStyles(
        align: PosAlign.center,
        fontType: PosFontType.fontA,
      ),
      linesAfter: 1,
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Pengeluaran',
          width: 6,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: 'Total',
          width: 6,
          styles: const PosStyles(
            bold: true,
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );

    // product info list item section (outcome)
    final _outcomeDetail = closingResponse.struk?.outcomeDetail;
    int _totalOutcome = 0;
    _outcomeDetail?.forEach((_outcomeDetail) {
      _totalOutcome += _outcomeDetail.amount ?? 0;

      _bytes += ticket.row(
        [
          PosColumn(
              text: _outcomeDetail.text ?? '',
              width: 6,
              styles: const PosStyles(
                fontType: PosFontType.fontA,
              )),
          PosColumn(
            text: formatToIdr(_outcomeDetail.amount),
            width: 6,
            styles: const PosStyles(
              align: PosAlign.right,
              fontType: PosFontType.fontA,
            ),
          ),
        ],
      );
    });

    _bytes += ticket.hr();
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Total',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_totalOutcome),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );

    _bytes += ticket.hr();

    // PAYMENT DETAIL

    // Cash payment
    final _cashPayment = closingResponse.struk?.paymentDetail?.cashPayment;
    _bytes += ticket.text(
      'PAYMENT DETAIL',
      styles: const PosStyles(
        align: PosAlign.center,
        fontType: PosFontType.fontA,
      ),
      linesAfter: 1,
    );
    _bytes += ticket.text(
      'CASH PAYMENT',
      styles: const PosStyles(
        align: PosAlign.center,
        fontType: PosFontType.fontA,
      ),
      linesAfter: 1,
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Sales',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_cashPayment?.cashSales),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Refund',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_cashPayment?.cashRefund),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );
    _bytes += ticket.hr();
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'TOTAL',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_cashPayment?.total),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );

    _bytes += ticket.feed(1);

    // EDC payment
    final _edcPayment = closingResponse.struk?.paymentDetail?.edcPayment;
    _bytes += ticket.text(
      'EDC PAYMENT',
      styles: const PosStyles(
        align: PosAlign.center,
        fontType: PosFontType.fontA,
      ),
      linesAfter: 1,
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'BCA',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_edcPayment?.bca),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'MANDIRI',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_edcPayment?.mandiri),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'BRI',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_edcPayment?.bri),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'BNI',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_edcPayment?.bni),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Refund',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_edcPayment?.refund),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );
    _bytes += ticket.hr();
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'TOTAL',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_edcPayment?.total),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );

    _bytes += ticket.feed(1);

    // E-Wallet payment
    final _eWallet = closingResponse.struk?.paymentDetail?.eWallet;
    _bytes += ticket.text(
      'E-WALLET',
      styles: const PosStyles(
        align: PosAlign.center,
        fontType: PosFontType.fontA,
      ),
      linesAfter: 1,
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'ShopeePay',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_eWallet?.shopeePay),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Gopay',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_eWallet?.gopay),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Dana',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_eWallet?.dana),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'QRIS',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_eWallet?.qris),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'OVO',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_eWallet?.ovo),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );
    _bytes += ticket.hr();
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'TOTAL',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_eWallet?.total),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );

    _bytes += ticket.feed(1);
    // transfer
    final transferTotal = closingResponse.struk?.paymentDetail?.transfer ?? 0;
    _bytes += ticket.text(
      'TRANSFER',
      styles: const PosStyles(
        align: PosAlign.center,
        fontType: PosFontType.fontA,
      ),
      linesAfter: 1,
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'TOTAL',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(transferTotal),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );

    _bytes += ticket.feed(1);

    // Overview payment
    final _overview = closingResponse.struk?.paymentDetail?.overview;
    _bytes += ticket.text(
      'OVERVIEW',
      styles: const PosStyles(
        align: PosAlign.center,
        fontType: PosFontType.fontA,
      ),
      linesAfter: 1,
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Income',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_overview?.income),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'Outcome',
          width: 4,
          styles: const PosStyles(
            bold: true,
            fontType: PosFontType.fontA,
          ),
        ),
        PosColumn(
          text: formatToIdr(_overview?.outcome),
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
            fontType: PosFontType.fontA,
          ),
        ),
      ],
    );

    _bytes += ticket.hr();

    //CASH MANAGEMENT
    final cashManagementDetail = closingResponse.struk?.cashManagementDetail;
    _bytes += ticket.text(
      'CASH MANAGEMENT',
      styles: const PosStyles(
        align: PosAlign.center,
        fontType: PosFontType.fontA,
      ),
      linesAfter: 1,
    );
    _bytes += ticket.row(
      [
        PosColumn(
          text: 'CASH PAYMENT',
          width: 6,
          styles: const PosStyles(bold: true, fontType: PosFontType.fontB),
        ),
        PosColumn(
          text: formatToIdr(cashManagementDetail?.cashPayment),
          width: 6,
          styles: const PosStyles(align: PosAlign.right, fontType: PosFontType.fontB),
        ),
      ],
    );

    _bytes += ticket.row(
      [
        PosColumn(
          text: 'INCOME',
          width: 4,
          styles: const PosStyles(bold: true, fontType: PosFontType.fontB),
        ),
        PosColumn(
          text: cashManagementDetail!.incomeCashManagementDetail!.isEmpty ? formatToIdr(0) : '',
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
          ),
        ),
      ],
    );

    if (cashManagementDetail.incomeCashManagementDetail!.isNotEmpty) {
      cashManagementDetail.incomeCashManagementDetail?.forEach((element) {
        _bytes += ticket.row(
          [
            PosColumn(
              text: element.text ?? '',
              width: 4,
              styles: const PosStyles(
                bold: true,
              ),
            ),
            PosColumn(
              text: formatToIdr(element.amount),
              width: 8,
              styles: const PosStyles(
                align: PosAlign.right,
              ),
            ),
          ],
        );
      });
    }

    _bytes += ticket.row(
      [
        PosColumn(
          text: 'EXPENSE',
          width: 4,
          styles: const PosStyles(bold: true, fontType: PosFontType.fontB),
        ),
        PosColumn(
          text: cashManagementDetail.expense!.isEmpty ? formatToIdr(0) : '',
          width: 8,
          styles: const PosStyles(
            align: PosAlign.right,
          ),
        ),
      ],
    );

    if (cashManagementDetail.expense!.isNotEmpty) {
      cashManagementDetail.expense?.forEach((e) {
        _bytes += ticket.row(
          [
            PosColumn(
              text: e.text!,
              width: 4,
              styles: const PosStyles(bold: true, fontType: PosFontType.fontB),
            ),
            PosColumn(
              text: formatToIdr(e.amount),
              width: 8,
              styles: const PosStyles(align: PosAlign.right, fontType: PosFontType.fontB),
            ),
          ],
        );
      });
    }

    _bytes += ticket.row(
      [
        PosColumn(
          text: 'EXPECTED ENDING CASH',
          width: 6,
          styles: const PosStyles(bold: true, fontType: PosFontType.fontB),
        ),
        PosColumn(
          // text: formatToIdr(cashManagementDetail.expectedEndingCash), // TODO: Sementara dikurangi manual
          text: formatToIdr(cashManagementDetail.expectedEndingCash != null ? 0 - _totalRefund : 0),
          width: 6,
          styles: const PosStyles(
            align: PosAlign.right,
          ),
        ),
      ],
    );

    _bytes += ticket.row(
      [
        PosColumn(
          text: 'ACTUAL ENDING CASH',
          width: 6,
          styles: const PosStyles(bold: true, fontType: PosFontType.fontB),
        ),
        PosColumn(
          text: formatToIdr(cashManagementDetail.actualEndingCash),
          width: 6,
          styles: const PosStyles(
            align: PosAlign.right,
          ),
        ),
      ],
    );

    _bytes += ticket.row(
      [
        PosColumn(
          text: 'CASH DIFFERENCE',
          width: 6,
          styles: const PosStyles(bold: true, fontType: PosFontType.fontB),
        ),
        PosColumn(
          text: formatToIdr(cashManagementDetail.cashDifference),
          width: 6,
          styles: const PosStyles(
            align: PosAlign.right,
          ),
        ),
      ],
    );

    _bytes += ticket.feed(2);

    //contact section
    final Image? contactIG = await getImage(ImageAsset.imgContactReceiptIG);
    final Image? contactWA = await getImage(ImageAsset.imgContactReceiptWA);
    final Image? contactWA2 = await getImage(ImageAsset.imgContactReceiptWA2);

    if (contactIG != null) _bytes += ticket.imageRaster(contactIG);
    if (contactWA != null) _bytes += ticket.imageRaster(contactWA);
    if (contactWA2 != null) _bytes += ticket.imageRaster(contactWA2);

    _bytes += ticket.feed(4);

    ticket.cut();

    return _bytes;
  }

  Future<Image?> getImage(String path) async {
    final ByteData contactData = await rootBundle.load(path);
    final Uint8List contactBytes = contactData.buffer.asUint8List();
    final Image? contactImage = decodeImage(contactBytes);
    return Future.value(contactImage);
  }
}
