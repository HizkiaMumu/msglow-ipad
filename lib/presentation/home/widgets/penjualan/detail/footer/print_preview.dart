import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../../../core/constants/image_asset.dart';
import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/date_util.dart';
import '../../../../../../core/utils/utils.dart';
import '../../../../../../core/widgets/my_dashed_horizontal_separator.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../../data/remote/response/transaction/closing_response.dart';
import '../../../../../../domain/entities/print/print_order_data.dart';
import 'print_args.dart';

class PrintPreview extends StatelessWidget {
  final PrintArgs args;

  const PrintPreview({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: args.printData != null
            ? _buildPrintDataPreview()
            : _buildClosingResponsePreview(args.closingResponse));
  }

  _buildProductName(PrintOrderData data) {
    // final name = data.isPreOrder == true ? "(Pre-Order)${data.name}" : data.name;
    return MyText(text: data.name, alignment: Alignment.centerLeft);
  }

  Widget _buildPrintDataPreview() {
    final verticalSpace = Sizes.height15;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (args.printData?.isPrinted == true)
          const ArgsContainer(
              child: Align(
            alignment: Alignment.centerRight,
            child: MyText(
              text: "Copied",
              fontWeight: FontWeight.bold,
            ),
          )),
        Image.asset(
          "assets/images/logo_beautyy_glow.png",
          height: Sizes.height180,
        ),
        MyText(
          text:
              'Ruko MS GLOW BY BEAUTYYGLOW\n${args.printData?.cashierData?.userRole?.merchant?.address ?? ''}',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        // const MyText(text: "SHIFT PRINT", textAlign: TextAlign.center),
        // SizedBox(height: verticalSpace),
        ArgsContainer(
          child: Column(
            children: [
              Table(
                columnWidths: const {0: IntrinsicColumnWidth()},
                children: [
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: MyText(text: "Waktu"),
                      ),
                      MyText(
                          text:
                              ": ${DateUtil.dateTimeToFormattedDate(DateTime.now(), datePattern: "dd/MM/yyyy, HH:mm")}")
                    ],
                  ),
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: MyText(text: "Pelanggan"),
                      ),
                      MyText(
                          text:
                              ': ${args.printData?.customer?.fullName ?? Strings.nonMember}')
                    ],
                  ),
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: MyText(text: "Kasir"),
                      ),
                      MyText(text: ': ${args.printData?.cashierName}')
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        ArgsContainer(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            MyText(text: "Pesanan", fontWeight: FontWeight.bold),
            MyText(text: "Total", fontWeight: FontWeight.bold),
          ],
        )),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        for (PrintOrderData orderData in args.printData!.orderData)
          ArgsContainer(
            child: Column(
              children: [
                _buildProductName(orderData),
                orderData.note != null && orderData.note != ''
                    ? MyText(
                        text: orderData.note ?? '',
                        alignment: Alignment.centerLeft)
                    : const SizedBox.shrink(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "${orderData.quantity}x"),
                    MyText(text: orderData.totalIdr),
                  ],
                ),
                SizedBox(height: verticalSpace),
              ],
            ),
          ),
        for (PrintOrderData orderData in args.printData!.orderPackages)
          ArgsContainer(
            child: Column(
              children: [
                MyText(text: orderData.name, alignment: Alignment.centerLeft),
                orderData.note != null && orderData.note != ''
                    ? MyText(
                        text: orderData.note ?? '',
                        alignment: Alignment.centerLeft)
                    : const SizedBox.shrink(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "${orderData.quantity}x"),
                    MyText(text: orderData.totalIdr),
                  ],
                ),
                SizedBox(height: verticalSpace),
              ],
            ),
          ),
        for (PrintOrderData orderData in args.printData!.orderCustom)
          ArgsContainer(
            child: Column(
              children: [
                MyText(text: orderData.name, alignment: Alignment.centerLeft),
                orderData.note != null && orderData.note != ''
                    ? MyText(
                        text: orderData.note ?? '',
                        alignment: Alignment.centerLeft)
                    : const SizedBox.shrink(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "${orderData.quantity}x"),
                    MyText(text: orderData.totalIdr),
                  ],
                ),
                SizedBox(height: verticalSpace),
              ],
            ),
          ),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        ArgsContainer(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const MyText(text: "Subtotal"),
            MyText(text: args.printData?.subtotalIdr ?? "-"),
          ],
        )),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Diskon"),
              MyText(text: args.printData?.discountIdr ?? "-"),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        ArgsContainer(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MyText(text: "Total", fontWeight: FontWeight.bold),
                MyText(
                    text: "${args.printData?.totalIdr}",
                    fontWeight: FontWeight.bold),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MyText(text: "Metode Pembayaran"),
                MyText(text: "${args.printData?.paymentMethod}"),
              ],
            ),
            if (args.printData?.isCashPaymentMethod == true)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const MyText(text: "Tunai"),
                  MyText(text: "${args.printData?.cashAmountIdr}"),
                ],
              ),
            if (args.printData?.isCashPaymentMethod == true)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const MyText(text: "Kembali"),
                  MyText(text: "${args.printData?.kembaliInIdr}"),
                ],
              ),
          ],
        )),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        const ArgsContainer(child: MyText(text: "Notes:")),
        SizedBox(height: verticalSpace),
        const ArgsContainer(
          child: MyText(
            text:
                "Barang yang sudah dibeli tidak dapat ditukar/dikembalikan, kecuali ada perjanjian, terima kasih :)",
          ),
        ),
        SizedBox(height: verticalSpace),
        SizedBox(height: verticalSpace),
        const Center(child: MyText(text: "Kritik dan saran")),
        Center(
          child: QrImage(
            data: 'This is a simple QR code',
            version: QrVersions.auto,
            size: 100,
            gapless: false,
          ),
        ),
        ArgsContainer(
            child: Image.asset(
          ImageAsset.imgContactReceipt,
          height: 70,
        )),
        SizedBox(height: Sizes.height50),
      ],
    );
  }

  Widget _buildClosingResponsePreview(ClosingResponse? closingResponse) {
    if (closingResponse == null) {
      return const MyText(text: "no data");
    }
    final _shiftPrint = closingResponse.struk?.shiftPrint;
    final _transactionDetails = closingResponse.struk?.transactionDetail;
    final _outcomeDetail = closingResponse.struk?.outcomeDetail;
    final _cashPayment = closingResponse.struk?.paymentDetail?.cashPayment;
    final _edcPayment = closingResponse.struk?.paymentDetail?.edcPayment;
    final _eWallet = closingResponse.struk?.paymentDetail?.eWallet;
    // final _transfer = closingResponse.struk?.paymentDetail?.transfer ?? 0;
    final _overview = closingResponse.struk?.paymentDetail?.overview;
    final _kasIncome = closingResponse.struk?.kasDetail?.income ?? 0;
    final _kasOutcome = closingResponse.struk?.kasDetail?.outcome ?? 0;
    final _cashManagementDetail = closingResponse.struk?.cashManagementDetail;
    final _refundedItems = closingResponse.struk?.refundedItems;

    final verticalSpace = Sizes.height15;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/images/logo_beautyy_glow.png",
          height: Sizes.height180,
        ),
        MyText(
          text: 'Ruko MS GLOW BY BEAUTYYGLOW\n${_shiftPrint?.address ?? ''}',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        const MyText(text: "SHIFT PRINT", textAlign: TextAlign.center),
        SizedBox(height: verticalSpace),
        ArgsContainer(
          child: Column(
            children: [
              Table(
                columnWidths: const {0: IntrinsicColumnWidth()},
                children: [
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: MyText(text: "Start Date"),
                      ),
                      MyText(
                        text:
                            ": ${DateUtil.dateTimeToFormattedDate(_shiftPrint?.startDate, datePattern: "yyyy/MM/dd")}",
                      )
                    ],
                  ),
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: MyText(text: "End Date"),
                      ),
                      MyText(
                        text:
                            ": ${DateUtil.dateTimeToFormattedDate(_shiftPrint?.endDate, datePattern: "yyyy/MM/dd")}",
                      )
                    ],
                  ),
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: MyText(text: "Sold Items"),
                      ),
                      MyText(text: ": ${_shiftPrint?.soldItems ?? '-'}"),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: MyText(text: "Refunded Items"),
                      ),
                      MyText(text: ": ${_shiftPrint?.refundItems ?? '-'}"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        const MyText(text: "INCOME", textAlign: TextAlign.center),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              MyText(text: "Pesanan", fontWeight: FontWeight.bold),
              MyText(text: "Total", fontWeight: FontWeight.bold),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        if (_transactionDetails != null)
          for (TransactionDetail transactionDetail in _transactionDetails)
            ArgsContainer(
              child: Column(
                children: [
                  MyText(
                      text: transactionDetail.namaBarang ?? "-",
                      alignment: Alignment.centerLeft),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: "${transactionDetail.qty}x"),
                      MyText(text: formatToIdr(transactionDetail.total)),
                    ],
                  ),
                  SizedBox(height: verticalSpace),
                ],
              ),
            ),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Total"),
              MyText(
                  text: formatToIdr(_transactionDetails?.fold<double>(
                      0.0,
                      (double previousValue, element) =>
                          previousValue + (element.total?.toDouble() ?? 0.0)))),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        const MyText(text: "REFUNDED ITEMS", textAlign: TextAlign.center),
        SizedBox(height: verticalSpace),
        ArgsContainer(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            MyText(text: "Item", fontWeight: FontWeight.bold),
            MyText(text: "Total", fontWeight: FontWeight.bold),
          ],
        )),
        if (_refundedItems != null)
          for (RefundedItem refundedItem in _refundedItems)
            ArgsContainer(
              child: Column(
                children: [
                  MyText(
                      text: refundedItem.namaBarang ?? "-",
                      alignment: Alignment.centerLeft),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(text: "${refundedItem.qty}X"),
                      MyText(text: formatToIdr(refundedItem.total)),
                    ],
                  ),
                  SizedBox(height: verticalSpace),
                ],
              ),
            ),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Total"),
              MyText(
                  text: formatToIdr(_refundedItems?.fold<double>(
                      0.0,
                      (double previousValue, element) =>
                          previousValue + (element.total?.toDouble() ?? 0.0)))),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        const MyText(text: "OUTCOME", textAlign: TextAlign.center),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              MyText(text: "Pengeluaran", fontWeight: FontWeight.bold),
              MyText(text: "Total", fontWeight: FontWeight.bold),
            ],
          ),
        ),
        for (OutcomeDetail _outcomeDetail in _outcomeDetail ?? [])
          ArgsContainer(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: _outcomeDetail.text ?? "-"),
                    MyText(text: formatToIdr(_outcomeDetail.amount)),
                  ],
                ),
                SizedBox(height: verticalSpace),
              ],
            ),
          ),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Total"),
              MyText(
                text: formatToIdr(
                  (_outcomeDetail ?? []).fold<double>(
                      0.0,
                      (double previousValue, element) =>
                          previousValue + (element.amount?.toDouble() ?? 0.0)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        const MyText(text: "PAYMENT DETAIL", textAlign: TextAlign.center),
        const MyText(text: "CASH PAYMENT", textAlign: TextAlign.center),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Sales"),
              MyText(text: formatToIdr(_cashPayment?.cashSales)),
            ],
          ),
        ),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Refund"),
              MyText(text: formatToIdr(_cashPayment?.cashRefund)),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "TOTAL"),
              MyText(text: formatToIdr(_cashPayment?.total)),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        const MyText(text: "EDC PAYMENT", textAlign: TextAlign.center),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "BCA"),
              MyText(text: formatToIdr(_edcPayment?.bca)),
            ],
          ),
        ),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "MANDIRI"),
              MyText(text: formatToIdr(_edcPayment?.mandiri)),
            ],
          ),
        ),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "BRI"),
              MyText(text: formatToIdr(_edcPayment?.bri)),
            ],
          ),
        ),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "BNI"),
              MyText(text: formatToIdr(_edcPayment?.bni)),
            ],
          ),
        ),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "BNI"),
              MyText(text: formatToIdr(_edcPayment?.bni)),
            ],
          ),
        ),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Refund"),
              MyText(text: formatToIdr(_edcPayment?.refund)),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "TOTAL"),
              MyText(text: formatToIdr(_edcPayment?.total)),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        const MyText(text: "E-WALLET", textAlign: TextAlign.center),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "ShopeePay"),
              MyText(text: formatToIdr(_eWallet?.shopeePay)),
            ],
          ),
        ),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Gopay"),
              MyText(text: formatToIdr(_eWallet?.gopay)),
            ],
          ),
        ),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Dana"),
              MyText(text: formatToIdr(_eWallet?.dana)),
            ],
          ),
        ),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "QRIS"),
              MyText(text: formatToIdr(_eWallet?.qris)),
            ],
          ),
        ),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "OVO"),
              MyText(text: formatToIdr(_eWallet?.ovo)),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "TOTAL"),
              MyText(text: formatToIdr(_eWallet?.total)),
            ],
          ),
        ),
        // SizedBox(height: verticalSpace),
        // const MyText(text: "TRANSFER", textAlign: TextAlign.center),
        // ArgsContainer(
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       const MyText(text: "TOTAL"),
        //       MyText(text: formatToIdr(_transfer)),
        //     ],
        //   ),
        // ),

        SizedBox(height: verticalSpace),
        const MyText(text: "KAS", textAlign: TextAlign.center),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Income"),
              MyText(text: formatToIdr(_kasIncome)),
            ],
          ),
        ),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Outcome"),
              MyText(text: formatToIdr(_kasOutcome)),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        const MyText(text: "OVERVIEW", textAlign: TextAlign.center),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Income"),
              MyText(text: formatToIdr(_overview?.income)),
            ],
          ),
        ),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Outcome"),
              MyText(text: formatToIdr(_overview?.outcome)),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        const MyDashedHorizontalSeparator(),
        SizedBox(height: verticalSpace),
        const MyText(text: "CASH MANAGEMENT", textAlign: TextAlign.center),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Cash Payment"),
              MyText(text: formatToIdr(_cashManagementDetail?.cashPayment)),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "INCOME"),
              _cashManagementDetail!.incomeCashManagementDetail!.isEmpty
                  ? MyText(text: formatToIdr(0))
                  : Container()
            ],
          ),
        ),
        Column(
          children: _cashManagementDetail.incomeCashManagementDetail!
              .map<Widget>((income) {
            return ArgsContainer(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: MyText(text: income.text ?? '')),
                  SizedBox(width: Sizes.width30),
                  MyText(text: formatToIdr(income.amount)),
                ],
              ),
            );
          }).toList(),
        ),
        SizedBox(height: verticalSpace),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "EXPENSE"),
              _cashManagementDetail.expense!.isEmpty
                  ? MyText(text: formatToIdr(0))
                  : Container()
            ],
          ),
        ),
        Column(
          children: _cashManagementDetail.expense!.map<Widget>((expense) {
            return ArgsContainer(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: MyText(text: expense.text ?? '')),
                  SizedBox(width: Sizes.width30),
                  MyText(text: formatToIdr(expense.amount)),
                ],
              ),
            );
          }).toList(),
        ),
        SizedBox(height: verticalSpace),
        ArgsContainer(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(child: MyText(text: "Expected Ending Cash")),
              MyText(
                  text: formatToIdr(_cashManagementDetail.expectedEndingCash)),
            ],
          ),
        ),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Actual Ending Cash"),
              SizedBox(width: Sizes.width30),
              MyText(text: formatToIdr(_cashManagementDetail.actualEndingCash)),
            ],
          ),
        ),
        ArgsContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const MyText(text: "Cash Difference"),
              MyText(text: formatToIdr(_cashManagementDetail.cashDifference)),
            ],
          ),
        ),
        SizedBox(height: verticalSpace),
        SizedBox(height: verticalSpace),
        ArgsContainer(
            child: Image.asset(
          ImageAsset.imgContactReceipt,
          height: 70,
        )),
        SizedBox(height: Sizes.height50),
      ],
    );
  }
}

class ArgsContainer extends StatelessWidget {
  final Widget child;

  const ArgsContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: constraints.maxWidth - 100,
              minWidth: constraints.maxWidth - 100,
            ),
            child: child,
          );
        },
      ),
    );
  }
}
