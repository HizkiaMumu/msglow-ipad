import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_category.freezed.dart';

@freezed
class PriceCategory with _$PriceCategory {
  const factory PriceCategory({
    required int id,
    required String name,
  }) = _PriceCategory;

  static const items = [
    PriceCategory(id: 0, name: 'Standar'),
    PriceCategory(id: 1, name: 'Status Pelanggan'),
    PriceCategory(id: 2, name: 'Kuantitas'),
  ];
}
