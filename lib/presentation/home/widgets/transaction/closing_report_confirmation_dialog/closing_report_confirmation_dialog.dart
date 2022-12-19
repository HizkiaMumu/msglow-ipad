import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../../core/constants/strings.dart';
import '../../../../../core/extensions/snackbar_ext.dart';
import '../../../../../core/style/color_palettes.dart';
import '../../../../../core/style/sizes.dart';
import '../../../../../core/unions/failure.dart';
import '../../../../../core/utils/form_builder_util.dart';
import '../../../../../core/utils/get_util.dart';
import '../../../../../core/widgets/my_text.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../../../../core/widgets/secondary_button.dart';
import '../cubit/transaction_cubit.dart';

class ClosingReportConfirmationDialog extends StatefulWidget {
  const ClosingReportConfirmationDialog({Key? key}) : super(key: key);

  @override
  State<ClosingReportConfirmationDialog> createState() =>
      _ClosingReportConfirmationDialogState();
}

class _ClosingReportConfirmationDialogState
    extends State<ClosingReportConfirmationDialog> {
  final _formNameEmail = '_formNameEmail';
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    context.read<TransactionCubit>().getClosingMail();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(
        horizontal: Sizes.height24,
        vertical: Sizes.height24,
      ),
      child: BlocListener<TransactionCubit, TransactionState>(
        listenWhen: (previous, current) =>
            previous.sendClosingMailResult != current.sendClosingMailResult,
        listener: (context, state) {
          state.sendClosingMailResult.maybeWhen(
            success: (data) {
              GetUtil.dismissDialog();
              context
                  .showSuccessSnackbar(data.message ?? 'Berhasil kirim email.');
            },
            error: (failure) {
              context.showErrorSnackbar(Failure.getErrorMessage(failure));
            },
            orElse: () => null,
          );
        },
        child: Container(
          padding: EdgeInsets.all(Sizes.height36),
          width: Sizes.width677,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Sizes.radius10),
          ),
          child: FormBuilder(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MyText(
                    text: 'Ingin mengirim laporan closing harian ke email?',
                    fontSize: Sizes.sp27,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.greyText6,
                    margin: EdgeInsets.only(
                      bottom: Sizes.height40,
                    ),
                  ),
                  BlocBuilder<TransactionCubit, TransactionState>(
                    buildWhen: (previous, current) =>
                        previous.getClosingMailResult !=
                        current.getClosingMailResult,
                    builder: (context, state) {
                      return state.getClosingMailResult.maybeWhen(
                          orElse: () =>
                              const Center(child: CircularProgressIndicator()),
                          success: (data) {
                            return FormBuilderTextField(
                              keyboardType: TextInputType.emailAddress,
                              initialValue: data,
                              validator: FormBuilderValidators.compose(
                                [
                                  FormBuilderUtil.emptyValidator(context),
                                  FormBuilderUtil.emailValidator(context),
                                ],
                              ),
                              style: TextStyle(
                                fontSize: Sizes.sp27,
                              ),
                              decoration: InputDecoration(
                                isDense: true,
                                filled: true,
                                fillColor: ColorPalettes.greyForm,
                                hintText: 'Masukkan Email',
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(Sizes.radius5),
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: Sizes.height16,
                                  horizontal: Sizes.width16,
                                ),
                              ),
                              name: _formNameEmail,
                            );
                          });
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: Sizes.height40,
                    ),
                    child: BlocBuilder<TransactionCubit, TransactionState>(
                      buildWhen: (previous, current) =>
                          previous.sendClosingMailResult !=
                          current.sendClosingMailResult,
                      builder: (context, state) {
                        return state.sendClosingMailResult.maybeWhen(
                          loading: () => SizedBox(
                            width: Sizes.height50,
                            height: Sizes.height50,
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          orElse: () {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SecondaryButton(
                                  text: Strings.cancel,
                                  onPressed: _onPressedCancel,
                                  height: Sizes.height66,
                                  width: Sizes.width285,
                                ),
                                PrimaryButton(
                                  text: 'Kirim',
                                  onPressed: _onPressedKirim,
                                  height: Sizes.height66,
                                  width: Sizes.width285,
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _onPressedKirim() {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      context
          .read<TransactionCubit>()
          .sendClosingMail(_formKey.currentState!.value[_formNameEmail]);
    }
  }

  _onPressedCancel() {
    GetUtil.dismissDialog();
  }
}
