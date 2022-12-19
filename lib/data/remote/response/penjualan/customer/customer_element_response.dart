// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/entities/penjualan/customer/customer_element.dart';
import 'status_customer_response.dart';

part 'customer_element_response.freezed.dart';
part 'customer_element_response.g.dart';

@freezed
class CustomerElementResponse with _$CustomerElementResponse {
  const CustomerElementResponse._();

  const factory CustomerElementResponse({
    required int? id,
    @JsonKey(name: 'status_customer_id') required int? statusCustomerId,
    @JsonKey(name: 'full_name') required String? fullName,
    @JsonKey(name: 'birth_place') required String? birthPlace,
    @JsonKey(name: 'birth_data') required DateTime? birthDate,
    required String? address,
    @JsonKey(name: 'phone_number') required String? phoneNumber,
    required String? email,
    @JsonKey(name: 'province_id') required int? provinceId,
    required String? province,
    @JsonKey(name: 'city_id') required int? cityId,
    required String? city,
    @JsonKey(name: 'subdistrict_id') required int? subdistrictId,
    required String? subdistrict,
    @JsonKey(name: 'address_store') required String? addressStore,
    @JsonKey(name: 'number_id') required String? numberId,
    required String? instagram,
    required String? facebook,
    required String? shopee,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
    @JsonKey(name: 'status_customer')
        required StatusCustomerResponse? statusCustomer,
    required String? avatar,
  }) = _CustomerElementResponse;

  factory CustomerElementResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerElementResponseFromJson(json);

  CustomerElement toDomain() => CustomerElement(
        id: id,
        statusCustomerId: statusCustomerId,
        fullName: fullName,
        birthPlace: birthPlace,
        birthDate: birthDate,
        address: address,
        phoneNumber: phoneNumber,
        email: email,
        provinceId: provinceId,
        province: province,
        cityId: cityId,
        city: city,
        subdistrictId: subdistrictId,
        subdistrict: subdistrict,
        addressStore: addressStore,
        numberId: numberId,
        instagram: instagram,
        facebook: facebook,
        shopee: shopee,
        createdAt: createdAt,
        updatedAt: updatedAt,
        statusCustomer: statusCustomer?.toDomain(),
      );
}
