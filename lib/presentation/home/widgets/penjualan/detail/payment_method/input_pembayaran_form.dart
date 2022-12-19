import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/style/color_palettes.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/utils/currency_formatter.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/utils/utils.dart';
import '../../../../../../core/widgets/my_text.dart';
import '../../../../../../domain/entities/penjualan/payment_method.dart';
import '../../cubit/penjualan_cubit.dart';

final formKeyCashAmount = GlobalKey<FormBuilderState>();
const _formNameCashAmount = '_formNameCashAmount';

class InputPembayaranForm extends StatelessWidget {
  const InputPembayaranForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Sizes.height54,
        left: Sizes.width21,
        right: Sizes.width34,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                width: Sizes.width112,
                text: Strings.labelInputPembayaran,
                fontSize: Sizes.sp18,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                width: Sizes.width59,
              ),
              Expanded(
                child: BlocConsumer<PenjualanCubit, PenjualanState>(
                  listenWhen: (previous, current) =>
                      previous.paymentMethod != current.paymentMethod,
                  listener: (context, state) {
                    if (state.paymentMethod.cashAmount == null) {
                      formKeyCashAmount.currentState?.reset();
                      formKeyCashAmount.currentState?.reset();
                    }
                  },
                  buildWhen: (previous, current) =>
                      previous.paymentMethod != current.paymentMethod,
                  builder: (context, state) {
                    return FormBuilder(
                      key: formKeyCashAmount,
                      // autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: FormBuilderTextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          FilteringTextInputFormatter.deny(RegExp(r'^0')),
                          CurrencyFormatter(),
                        ],
                        validator: (value) =>
                            state.paymentMethod.cashAmountInt < state.total
                                ? 'Minimal ${formatToIdr(state.total)}'
                                : null,
                        style: TextStyle(
                          fontSize: Sizes.sp18,
                        ),
                        decoration: InputDecoration(
                          isDense: true,
                          filled: true,
                          fillColor: ColorPalettes.greyForm,
                          hintText: Strings.hintInputPembayaran,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(Sizes.radius5),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: Sizes.height16,
                            horizontal: Sizes.width16,
                          ),
                        ),
                        onChanged: _onChangeCashAmount,
                        name: _formNameCashAmount,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Visibility(
            visible:
                context.select((PenjualanCubit value) => value.state.total) > 0,
            child: Padding(
              padding: EdgeInsets.only(
                top: Sizes.height8,
              ),
              child: Row(
                children: [
                  Visibility(
                    visible: false,
                    maintainSize: true,
                    maintainState: true,
                    maintainAnimation: true,
                    child: MyText(
                      width: Sizes.width171,
                      text: Strings.labelSuggestedCashAmount,
                      fontSize: Sizes.sp14,
                      fontWeight: FontWeight.w500,
                      textType: TextType.bodyText2,
                      color: ColorPalettes.greyText,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        // First suggested cash amount
                        Expanded(
                          child: Material(
                            color: ColorPalettes.bgGoldOp15,
                            borderRadius: BorderRadius.circular(Sizes.radius5),
                            child: BlocSelector<PenjualanCubit, PenjualanState,
                                int>(
                              selector: (state) {
                                return state.suggestedCashAmountOptionOne;
                              },
                              builder: (context, state) {
                                final _suggestedCashAmountIdr =
                                    formatToIdr(state);
                                return InkWell(
                                  onTap: () => _onTapSuggestedCashAmount(
                                    suggestedCashAmount:
                                        _suggestedCashAmountIdr,
                                  ),
                                  child: MyText(
                                    text: _suggestedCashAmountIdr,
                                    fontSize: Sizes.sp14,
                                    color: ColorPalettes.gold,
                                    textAlign: TextAlign.center,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: Sizes.width13,
                                      vertical: Sizes.height19,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Visibility(
                          visible: context.select((PenjualanCubit value) =>
                              value.state.suggestedCashAmountOptionOne !=
                              value.state.suggestedCashAmountOptionTwo),
                          child: SizedBox(
                            width: Sizes.width8,
                          ),
                        ),
                        // Second suggested cash amount
                        Visibility(
                          visible: context.select((PenjualanCubit value) =>
                              value.state.suggestedCashAmountOptionOne !=
                              value.state.suggestedCashAmountOptionTwo),
                          child: Expanded(
                            child: Material(
                              color: ColorPalettes.bgGoldOp15,
                              borderRadius:
                                  BorderRadius.circular(Sizes.radius5),
                              child: BlocSelector<PenjualanCubit,
                                  PenjualanState, int>(
                                selector: (state) {
                                  return state.suggestedCashAmountOptionTwo;
                                },
                                builder: (context, state) {
                                  final _suggestedCashAmountIdr =
                                      formatToIdr(state);
                                  return InkWell(
                                    onTap: () => _onTapSuggestedCashAmount(
                                      suggestedCashAmount:
                                          _suggestedCashAmountIdr,
                                    ),
                                    child: MyText(
                                      text: _suggestedCashAmountIdr,
                                      fontSize: Sizes.sp14,
                                      color: ColorPalettes.gold,
                                      textAlign: TextAlign.center,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: Sizes.width13,
                                        vertical: Sizes.height19,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _onChangeCashAmount(String? value) {
    if (value?.isEmpty ?? false) return;
    GetUtil.context
        .read<PenjualanCubit>()
        .changePaymentMethod(PaymentMethod(cashAmount: value));
  }

  _onTapSuggestedCashAmount({required String suggestedCashAmount}) {
    formKeyCashAmount.currentState?.fields[_formNameCashAmount]
        ?.didChange(suggestedCashAmount);
  }
}
