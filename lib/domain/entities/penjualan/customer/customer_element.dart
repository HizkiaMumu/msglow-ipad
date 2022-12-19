import 'package:freezed_annotation/freezed_annotation.dart';

import 'status_customer.dart';

part 'customer_element.freezed.dart';

@freezed
class CustomerElement with _$CustomerElement {
  const factory CustomerElement({
    required int? id,
    required int? statusCustomerId,
    required String? fullName,
    required String? birthPlace,
    required DateTime? birthDate,
    required String? address,
    required String? phoneNumber,
    required String? email,
    required int? provinceId,
    required String? province,
    required int? cityId,
    required String? city,
    required int? subdistrictId,
    required String? subdistrict,
    required String? addressStore,
    required String? numberId,
    required String? instagram,
    required String? facebook,
    required String? shopee,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    required StatusCustomer? statusCustomer,
  }) = _CustomerElement;
}
