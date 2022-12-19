import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/extensions/snackbar_ext.dart';
import '../../../../core/style/sizes.dart';
import '../../../../core/unions/failure.dart';
import '../../../../core/utils/get_util.dart';
import '../../../../core/utils/theme_util.dart';
import '../../../../core/widgets/fade_indexed_stack.dart';
import '../../../../core/widgets/gradient_container.dart';
import '../../../../core/widgets/loading_dialog.dart';
import '../../../../core/widgets/my_text.dart';
import 'closing_button.dart';
import 'cubit/transaction_cubit.dart';
import 'filter_date_field.dart';
import 'input_pengeluaran/add_pengeluaran_button.dart';
import 'input_pengeluaran/input_pengeluaran_view.dart';
import 'kas_masuk_view.dart';
import 'menu/transaction_tab.dart';
import 'transaction_list.dart';

class TransactionView extends HookWidget {
  const TransactionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _searchController = useTextEditingController();

    return BlocListener<TransactionCubit, TransactionState>(
      listenWhen: (previous, current) => previous.refundOrderResult != current.refundOrderResult,
      listener: (context, state) {
        state.refundOrderResult.maybeWhen(
          loading: () => GetUtil.showDialog(
            const LoadingDialog(),
            barrierDismissible: false,
          ),
          success: (data) {
            GetUtil.dismissDialog();
            context.showSuccessSnackbar(data.message ?? Strings.msgSuccessReffundOrder);
            context.read<TransactionCubit>().fetchTransactions();
            _searchController.clear();
          },
          error: (failure) {
            GetUtil.dismissDialog();
            context.showErrorSnackbar(Failure.getErrorMessage(failure));
          },
          orElse: () => null,
        );
      },
      child: KeyboardDismissOnTap(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return GradientContainer(
              width: constraints.maxWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Padding(
                    padding: EdgeInsets.only(
                      top: Sizes.height40,
                      left: Sizes.width58,
                      right: Sizes.height50,
                      bottom: Sizes.height29,
                    ),
                    child: Row(
                      children: [
                        MyText(
                          text: Strings.transaksi,
                          fontSize: Sizes.sp32,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        const Spacer(),
                        TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Cari nama customer atau produk',
                            hintStyle: TextStyle(fontSize: Sizes.sp18),
                            constraints: BoxConstraints(
                              maxWidth: Sizes.width382,
                              maxHeight: Sizes.height50,
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(Sizes.radius6),
                            ),
                            prefixIcon: const Icon(Icons.search),
                            isDense: true,
                          ),
                          keyboardType: TextInputType.text,
                          onChanged: (value) => _onChangeSearchKeyword(value),
                        )
                      ],
                    ),
                  ),
                  FilterDateField(
                    searchController: _searchController,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [TransactionTab(), AddPemasukanPengeluaranButton()],
                  ),
                  Expanded(
                    child: FadeIndexedStack(
                      duration: ThemeUtil.shortAnimationDuration,
                      index: context.select((TransactionCubit element) => element.state.tabIndex),
                      children: [
                        Stack(
                          children: [
                            TransactionList(
                              searchController: _searchController,
                            ),
                            const Align(
                              alignment: Alignment.bottomRight,
                              child: ClosingButton(),
                            ),
                          ],
                        ),
                        const InputPengeluaranView(),
                        BlocBuilder<TransactionCubit, TransactionState>(
                          builder: (context, state) {
                            return state.fetchIncomeListResult.when(
                              initial: () => const SizedBox.shrink(),
                              loading: () => const Center(
                                child: CircularProgressIndicator(),
                              ),
                              success: (data) {
                                if (!data.isSuccess) return Text(data.message);
                                if (data.incomes.isEmpty) {
                                  return const Center(
                                      child: MyText(
                                    text: "Tidak ada data",
                                    color: Colors.white,
                                  ));
                                }
                                return KasMasukView(data: data);
                              },
                              error: (error) => Text(error.toString()),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  _onChangeSearchKeyword(String value) {
    GetUtil.context.read<TransactionCubit>().searchTransactions(value);
  }
}
