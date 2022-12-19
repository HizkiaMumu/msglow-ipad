import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/currency_formatter.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/utils/utils.dart';
import '../../../../../../core/widgets/my_text_form_field.dart';
import '../../../../../../core/widgets/primary_button.dart';
import '../../../../../../core/widgets/secondary_button.dart';
import '../../cubit/penjualan_cubit.dart';

class CustomOrderForm extends StatefulWidget {
  const CustomOrderForm({Key? key}) : super(key: key);

  @override
  State<CustomOrderForm> createState() => _CustomOrderFormState();
}

class _CustomOrderFormState extends State<CustomOrderForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PenjualanCubit, PenjualanState>(
      listenWhen: (previous, current) => previous.orderState != current.orderState,
      listener: (context, state) {
        if (state.orderState == OrderState.finish) {
          GetUtil.dismissDialog();
        }
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: Sizes.width70,
          right: Sizes.width70,
          top: Sizes.height94,
        ),
        child: FormBuilder(
          key: _formKey,
          child: Column(
            children: [
              MyTextFormField(
                label: Strings.labelProductName,
                name: Strings.labelProductName,
                hintText: 'Ultimate Night Lotion',
                direction: Axis.horizontal,
                textFieldWidth: Sizes.width566,
              ),
              MyTextFormField(
                label: Strings.price,
                name: Strings.price,
                hintText: '150.000',
                direction: Axis.horizontal,
                textFieldWidth: Sizes.width566,
                padding: EdgeInsets.only(
                  top: Sizes.height37,
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  FilteringTextInputFormatter.deny(RegExp(r'^0')),
                  CurrencyFormatter(),
                ],
              ),
              MyTextFormField(
                label: Strings.note,
                name: Strings.note,
                hintText: Strings.note,
                direction: Axis.horizontal,
                textFieldWidth: Sizes.width566,
                keyboardType: TextInputType.number,
                padding: EdgeInsets.only(
                  top: Sizes.height37,
                  bottom: Sizes.height100,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SecondaryButton(
                    text: Strings.cancel,
                    width: Sizes.width172,
                    height: Sizes.height56,
                    fontSize: Sizes.sp18,
                    fontWeight: FontWeight.w500,
                    margin: EdgeInsets.only(
                      right: Sizes.width42,
                    ),
                    onPressed: () => _onPressCancel(context),
                  ),
                  PrimaryButton(
                    text: Strings.add,
                    width: Sizes.width172,
                    height: Sizes.height56,
                    fontSize: Sizes.sp18,
                    fontWeight: FontWeight.w500,
                    onPressed: () => _onPressAdd(context),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onPressAdd(BuildContext context) {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      context.read<PenjualanCubit>().addCustomProduct(
            productName: _formKey.currentState!.value[Strings.labelProductName],
            price: removeIdrFormat(_formKey.currentState!.value[Strings.price]),
            note: _formKey.currentState!.value[Strings.note],
          );
    }
  }

  _onPressCancel(BuildContext context) {
    GetUtil.dismissDialog();
  }
}
