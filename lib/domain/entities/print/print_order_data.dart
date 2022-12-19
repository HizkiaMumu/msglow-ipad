import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/utils.dart';

part 'print_order_data.freezed.dart';

@freezed
class PrintOrderData with _$PrintOrderData {
  const PrintOrderData._();

  const factory PrintOrderData({
    required int quantity,
    required int costPerItem,
    required int total,
    required String name,
    String? note,
    bool? isPreOrder,
  }) = _PrintOrderData;

  String get totalIdr => formatToIdr(total);

  String get costPerItemInIdr => formatToIdr(costPerItem);
}
