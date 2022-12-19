import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/utils/navigation_util.dart';
import '../../../../../../core/widgets/my_dropdown_field.dart';
import '../../../../../../core/widgets/my_error_widget.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../../core/widgets/my_text_form_field.dart';
import '../../../../../../core/widgets/primary_button.dart';
import '../../../../../../core/widgets/secondary_button.dart';
import '../../../../../../data/remote/response/penjualan/customer/status_customer_list_response.dart';
import '../../../../../../data/remote/response/penjualan/customer/status_customer_response.dart';
import 'add_customer_result.dart';
import 'cubit/add_customer_cubit.dart';

class AddCustomerForm extends StatefulWidget {
  final StatusCustomerListResponse customerStatues;

  const AddCustomerForm({Key? key, required this.customerStatues})
      : super(key: key);

  @override
  State<AddCustomerForm> createState() => _AddCustomerFormState();
}

class _AddCustomerFormState extends State<AddCustomerForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddCustomerCubit, AddCustomerState>(
      listenWhen: (previous, current) =>
          previous.addCustomerResult != current.addCustomerResult,
      listener: (context, state) {
        state.addCustomerResult.maybeWhen(
          success: (data) {
            NavigationUtil.popUntil(
                result: AddCustomerResult(
              isNewCustomerAdded: true,
            ));
          },
          orElse: () => null,
        );
      },
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MyTextFormField(
              label: Strings.nomorMember,
              name: Strings.nomorMember,
              keyboardType: TextInputType.number,
              onChanged: _onChangeNomorMember,
              useValidator: false,
            ),
            FormBuilder(
              key: _formKey,
              child: MyTextFormField(
                label: Strings.fullName,
                name: Strings.fullName,
                keyboardType: TextInputType.text,
                onChanged: _onChangeFullName,
              ),
            ),
            MyTextFormField(
              label: Strings.address,
              name: Strings.address,
              keyboardType: TextInputType.text,
              onChanged: _onChangeAddress,
              padding: EdgeInsets.only(
                top: Sizes.height30,
              ),
              useValidator: false,
            ),
            MyTextFormField(
              label: Strings.phoneNumber,
              name: Strings.phoneNumber,
              keyboardType: TextInputType.number,
              onChanged: _onChangePhoneNumber,
              padding: EdgeInsets.only(
                top: Sizes.height30,
              ),
              useValidator: false,
            ),
            MyDropdownField<StatusCustomerResponse>(
              mandatory: false,
              label: Strings.customerStatus,
              name: Strings.customerStatus,
              onChanged: _onChangeCustomerStatus,
              padding: EdgeInsets.only(
                top: Sizes.height30,
                bottom: Sizes.height50,
              ),
              items: widget.customerStatues.statusCustomers
                      ?.map((e) => DropdownMenuItem(
                            value: e,
                            child: MyText(
                              text: e.title ?? '-',
                              fontSize: Sizes.sp18,
                            ),
                          ))
                      .toList() ??
                  List.empty(),
            ),
            BlocBuilder<AddCustomerCubit, AddCustomerState>(
              buildWhen: (previous, current) =>
                  previous.addCustomerResult != current.addCustomerResult,
              builder: (context, state) {
                return state.addCustomerResult.maybeWhen(
                  loading: () => SizedBox(
                    width: Sizes.height50,
                    height: Sizes.height50,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  error: (failure) {
                    return MyErrorWidget(
                      failure: failure,
                      onPressed: _onPressSave,
                    );
                  },
                  orElse: () {
                    return LayoutBuilder(
                      builder: (_, c) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SecondaryButton(
                            width: min(Sizes.width218, c.maxWidth / 2),
                            text: Strings.cancel,
                            onPressed: _onPressCancel,
                          ),
                          PrimaryButton(
                            width: min(Sizes.width218, c.maxWidth / 2),
                            text: Strings.simpan,
                            onPressed: _onPressSave,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  _onChangeFullName(String? value) {
    GetUtil.context.read<AddCustomerCubit>().saveFullName(value ?? '');
  }

  _onChangeNomorMember(String? value) {
    GetUtil.context.read<AddCustomerCubit>().saveFullName(value ?? '');
  }

  _onChangeAddress(String? value) {
    GetUtil.context.read<AddCustomerCubit>().saveAddress(value ?? '');
  }

  _onChangePhoneNumber(String? value) {
    GetUtil.context.read<AddCustomerCubit>().savePhoneNumber(value ?? '');
  }

  _onChangeCustomerStatus(StatusCustomerResponse? value) {
    GetUtil.context.read<AddCustomerCubit>().saveStatusCustomer(value);
  }

  _onPressCancel() {
    NavigationUtil.popUntil();
  }

  _onPressSave() {
    if (!(_formKey.currentState?.validate() ?? false)) {
      return;
    }
    GetUtil.context.read<AddCustomerCubit>().addCustomer();
  }
}
