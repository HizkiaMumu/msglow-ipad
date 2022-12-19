import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/strings.dart';
import '../../../../../core/style/color_palettes.dart';
import '../../../../../core/style/sizes.dart';
import '../../../../../core/utils/get_util.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../cubit/transaction_cubit.dart';
import 'add_pengeluaran_dialog.dart';

class AddPemasukanPengeluaranButton extends StatelessWidget {
  const AddPemasukanPengeluaranButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = context.select((TransactionCubit element) => element.state.tabIndex);
    final cashierNames = context.select((TransactionCubit element) => element.state.cashierNames);
    final rxCashierName = context.select((TransactionCubit element) => element.state.selectedCashierName);

    return Builder(
      builder: (context) {
        if (index == 1 || index == 2) {
          return PrimaryButton(
            text: Strings.add,
            height: Sizes.height60,
            width: Sizes.width189,
            margin: EdgeInsets.only(
              bottom: Sizes.height33,
              right: Sizes.height50,
            ),
            color: ColorPalettes.goldDark2,
            onPressed: () async {
              await GetUtil.showDialog(AddPengeluaranDialog(mode: index));
            },
          );
        }

        return BlocBuilder<TransactionCubit, TransactionState>(
          buildWhen: (previous, current) => previous.fetchTransactionResult != current.fetchTransactionResult,
          builder: (context, state) {
            return state.fetchTransactionResult.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const SizedBox.shrink(),
              success: (data) {
                if (data.orders == null || data.orders!.isEmpty) {
                  return const SizedBox.shrink();
                }

                final items = <DropdownMenuItem<String>>[
                  const DropdownMenuItem(child: Text('Semua'), value: ''),
                ];

                for (var user in cashierNames) {
                  items.add(DropdownMenuItem(
                    child: Text(user.name ?? '-'),
                    value: user.name,
                  ));
                }

                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  margin: EdgeInsets.only(
                    right: Sizes.height50,
                    bottom: Sizes.height33,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: DropdownButton<String>(
                    value: rxCashierName,
                    items: items,
                    underline: const SizedBox.shrink(),
                    onChanged: (value) {
                      GetUtil.context.read<TransactionCubit>().searchTransactions(value ?? '');
                    },
                  ),
                );
              },
              error: (failure) => const SizedBox.shrink(),
            );
          },
        );
      },
    );
  }
}
