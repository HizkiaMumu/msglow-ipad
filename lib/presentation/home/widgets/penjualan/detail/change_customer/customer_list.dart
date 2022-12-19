import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/widgets/my_error_widget.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../../core/widgets/primary_button.dart';
import '../../cubit/penjualan_cubit.dart';
import '../add_customer/add_customer_dialog.dart';
import '../add_customer/add_customer_result.dart';
import 'customer_list_item.dart';
import 'search_customer_form.dart';

class CustomerList extends StatelessWidget {
  const CustomerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _fetchCustomers();
    return BlocBuilder<PenjualanCubit, PenjualanState>(
      buildWhen: (previous, current) =>
          previous.fetchCustomersResult != current.fetchCustomersResult,
      builder: (context, state) {
        return state.fetchCustomersResult.when(
          initial: () => const SizedBox.shrink(),
          loading: () => SizedBox(
            width: Sizes.height50,
            height: Sizes.height50,
            child: const Center(child: CircularProgressIndicator()),
          ),
          success: (data) {
            if (data.customers == null || data.customers!.isEmpty) {
              return MyText(
                text: Strings.msgCustomersNotFound,
                fontSize: Sizes.sp22,
              );
            }
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SearchCustomerForm(
                    customers: data.customers!,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: Sizes.heightThreeQuarter,
                    ),
                    child: BlocBuilder<PenjualanCubit, PenjualanState>(
                      buildWhen: (previous, current) =>
                          previous.searchedCustomers !=
                          current.searchedCustomers,
                      builder: (context, state) {
                        final _listedCustomers = state.searchedCustomers == null
                            ? data.customers!
                            : state.searchedCustomers!;
                        return ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(
                            vertical: Sizes.height16,
                          ),
                          itemCount: _listedCustomers.length + 1,
                          itemBuilder: (BuildContext context, int index) {
                            return CustomerListItem(
                              index: index,
                              customer: index == 0
                                  ? null
                                  : _listedCustomers[index - 1],
                              selectedCusomter: state.selectedCustomer,
                            );
                          },
                        );
                      },
                    ),
                  ),
                  PrimaryButton(
                    text: Strings.addCustomer,
                    onPressed: _onPressAddCustomer,
                  ),
                ],
              ),
            );
          },
          error: (failure) => MyErrorWidget(
            failure: failure,
            onPressed: _fetchCustomers,
          ),
        );
      },
    );
  }

  _fetchCustomers() {
    GetUtil.context.read<PenjualanCubit>().fetchCustomers();
  }

  _onPressAddCustomer() async {
    final _result = await GetUtil.showDialog(const AddCustomerDialog());

    if (_result is AddCustomerResult) {
      if (_result.isNewCustomerAdded) {
        _fetchCustomers();
      }
    }
  }
}
