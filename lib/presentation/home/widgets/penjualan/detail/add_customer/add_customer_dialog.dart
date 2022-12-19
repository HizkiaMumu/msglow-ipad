import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/widgets/my_error_widget.dart';
import 'add_customer_form.dart';
import 'cubit/add_customer_cubit.dart';

class AddCustomerDialog extends StatelessWidget {
  const AddCustomerDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _fetchCustomerStatues();
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(
        horizontal: Sizes.height24,
        vertical: Sizes.height24,
      ),
      child: Container(
        padding: EdgeInsets.all(Sizes.height16),
        width: Sizes.heightHalf,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.radius10),
        ),
        child: BlocBuilder<AddCustomerCubit, AddCustomerState>(
          buildWhen: (previous, current) =>
              previous.fetchStatusCustomersResult !=
              current.fetchStatusCustomersResult,
          builder: (context, state) {
            return state.fetchStatusCustomersResult.when(
              initial: () => const SizedBox.shrink(),
              loading: () => SizedBox(
                width: Sizes.height50,
                height: Sizes.height50,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              success: (data) {
                return AddCustomerForm(
                  customerStatues: data,
                );
              },
              error: (failure) {
                return MyErrorWidget(
                  failure: failure,
                  onPressed: _fetchCustomerStatues,
                );
              },
            );
          },
        ),
      ),
    );
  }

  _fetchCustomerStatues() {
    GetUtil.context.read<AddCustomerCubit>().fetchStatusCustomers();
  }
}
