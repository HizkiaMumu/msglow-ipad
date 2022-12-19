import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/date_util.dart';
import '../../../core/utils/utils.dart';
import '../login/user.dart';
import '../penjualan/customer/customer_element.dart';
import 'print_order_data.dart';

part 'print_data.freezed.dart';

@freezed
class PrintData with _$PrintData {
  const PrintData._();

  const factory PrintData({
    required CustomerElement? customer,
    required List<PrintOrderData> orderData,
    required List<PrintOrderData> orderPackages,
    required List<PrintOrderData> orderCustom,
    required int subtotal,
    required int discount,
    required int total,
    required String paymentMethod,
    required int? cashAmount,
    required DateTime orderDate,
    required bool isPrinted,
    User? cashierData,
  }) = _PrintData;

  String get subtotalIdr => formatToIdr(subtotal);

  String get discountIdr => formatToIdr(discount, showZero: false);

  String get totalIdr => formatToIdr(total);

  String get cashAmountIdr => formatToIdr(cashAmount);

  String get formattedOrderDate => DateUtil.dateTimeToFormattedDate(
        orderDate,
        datePattern: 'dd/MM/yyyy, HH:mm',
      );

  bool get isCashPaymentMethod => paymentMethod.toLowerCase() == 'cash';

  String get cashierName => cashierData?.name ?? '-';

  String get kembaliInIdr {
    if (cashAmount == null) {
      return formatToIdr(0);
    }
    return formatToIdr(cashAmount! - total);
  }
}
