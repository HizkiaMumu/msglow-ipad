import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/extensions/snackbar_ext.dart';
import '../../../../../../core/style/sizes.dart';
import '../../../../../../core/unions/failure.dart';
import '../../../../../../core/utils/get_util.dart';
import '../../../../../../core/widgets/loading_dialog.dart';
import '../../../../../../core/widgets/primary_button.dart';
import '../../../../../../core/widgets/secondary_button.dart';
import '../../../../../../domain/entities/login/user.dart';
import '../../cubit/penjualan_cubit.dart';
import '../../list_product/list_product_section_controller.dart';
import 'print_args.dart';
import 'print_dialog.dart';
import 'submit_order_confirmation_dialog.dart';

class DetailFooter extends StatelessWidget {
  const DetailFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<PenjualanCubit, PenjualanState>(
      listenWhen: (previous, current) => previous.validateOrderResult != current.validateOrderResult,
      listener: (context, state) {
        state.validateOrderResult.maybeWhen(
          success: (data) {
            if (state.onDoingFunction == FunctionState.save) {
              _showSubmitConfirmationDialog();
              return;
            }
            GetUtil.showDialog(SubmitOrderConfirmationDialog(
              okText: Strings.cetak,
              onPressSave: () {
                Get.back();
                Future.microtask(() {
                  _showPrintDialog(state, user: Get.find<ListProductSectionController>().selectedKasirObs.value);
                });
              },
            ));
          },
          error: (failure) {
            context.showErrorSnackbar(Failure.getErrorMessage(failure));
          },
          orElse: () => null,
        );
      },
      child: BlocListener<PenjualanCubit, PenjualanState>(
        listenWhen: (previous, current) => previous.submitOrderResult != current.submitOrderResult,
        listener: (context, state) {
          state.submitOrderResult.maybeWhen(
            loading: () => GetUtil.showDialog(
              const LoadingDialog(),
              barrierDismissible: false,
            ),
            success: (data) {
              GetUtil.dismissDialog();
              context.showSuccessSnackbar(data.message);
            },
            error: (failure) {
              GetUtil.dismissDialog();
              context.showErrorSnackbar(Failure.getErrorMessage(failure));
            },
            orElse: () => null,
          );
        },
        child: Padding(
          padding: EdgeInsets.only(
            top: Sizes.height35,
            left: Sizes.width24,
            right: Sizes.width24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SecondaryButton(
                width: Sizes.width170,
                height: Sizes.height72,
                text: Strings.simpan,
                onPressed: _onPressSave,
              ),
              BlocBuilder<PenjualanCubit, PenjualanState>(
                builder: (context, state) {
                  return PrimaryButton(
                    width: Sizes.width170,
                    height: Sizes.height72,
                    text: Strings.cetak,
                    onPressed: _onPressPrint,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onPressSave() {
    final cubit = GetUtil.context.read<PenjualanCubit>();
    cubit.setIsPrinted(false);
    cubit.validateOrder(onDoingFunction: FunctionState.save);
  }

  _onPressPrint() async {
    final cubit = GetUtil.context.read<PenjualanCubit>();
    cubit.setIsPrinted(true);
    cubit.validateOrder(onDoingFunction: FunctionState.print);
  }

  _showSubmitConfirmationDialog() async {
    GetUtil.showDialog(SubmitOrderConfirmationDialog(
      okText: Strings.simpan,
      onPressSave: () {
        GetUtil.context.read<PenjualanCubit>().submitOrder(
            orderDate: DateTime.now().toLocal(), user: Get.find<ListProductSectionController>().selectedKasirObs.value);
        Get.back();
      },
    ));
  }

  _showPrintDialog(PenjualanState penjualanState, {User? user}) async {
    // final _permissions = await [
    //   Permission.location,
    //   Permission.locationWhenInUse,
    //   Permission.locationAlways
    // ].request();

    // if (_permissions[Permission.location] == PermissionStatus.granted) {
    final _orderDate = DateTime.now().toLocal();
    GetUtil.showDialog(
      PrintDialog(
        args: PrintArgs(
          printData: penjualanState.toPrintData(
            orderDate: _orderDate,
            cashierData: user,
          ),
          onSuccessPrint: () => _onSuccessPrint(orderDate: _orderDate, user: user),
          closingResponse: null,
        ),
      ),
    );
    //   return;
    // }

    // GetUtil.context.showErrorSnackbar(Strings.msgShouldGrantLocationAccess);
  }

  _onSuccessPrint({required DateTime orderDate, User? user}) {
    GetUtil.context.read<PenjualanCubit>().submitOrder(orderDate: orderDate, user: user);
  }
}
