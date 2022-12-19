import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../domain/entities/penjualan/customer/customer_element.dart';
import '../../cubit/penjualan_cubit.dart';

class SearchCustomerForm extends StatelessWidget {
  final List<CustomerElement> customers;

  const SearchCustomerForm({Key? key, required this.customers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      style: TextStyle(
        fontSize: Sizes.sp18,
      ),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        isDense: true,
        filled: true,
        fillColor: ColorPalettes.greyForm,
        hintText: Strings.searchCustomer,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.radius5),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: Sizes.height16,
          horizontal: Sizes.width16,
        ),
      ),
      onChanged: _onChangeSearchCustomer,
    );
  }

  _onChangeSearchCustomer(String? value) {
    GetUtil.context.read<PenjualanCubit>().searchCustomers(value, customers);
  }
}
