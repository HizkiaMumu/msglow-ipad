import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/style/sizes.dart';
import '../../../../core/utils/get_util.dart';
import '../../../../core/widgets/my_error_widget.dart';
import '../../../../core/widgets/my_text.dart';
import '../../cubit/home_cubit.dart';
import 'cubit/transaction_cubit.dart';
import 'list_item/transaction_list_item.dart';

class TransactionList extends StatelessWidget {
  final TextEditingController searchController;

  const TransactionList({Key? key, required this.searchController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listenWhen: (previous, current) => previous.selectedMenuItemIndex != current.selectedMenuItemIndex,
      listener: (context, state) {
        if (state.selectedMenuItemIndex == 1) {
          searchController.clear();
          context.read<TransactionCubit>().changeTabIndex(0);
          _fetchTransactions();
          _resetSelectedCashier();
          context.read<TransactionCubit>().fetchOutcomes();
        }
      },
      child: BlocBuilder<TransactionCubit, TransactionState>(
        buildWhen: (previous, current) => previous.fetchTransactionResult != current.fetchTransactionResult,
        builder: (context, state) {
          return state.fetchTransactionResult.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
            success: (data) {
              if (data.orders == null || data.orders!.isEmpty) {
                return MyText(
                  text: Strings.msgEmptyTransaction,
                  fontSize: Sizes.sp20,
                  fontWeight: FontWeight.w500,
                  alignment: Alignment.center,
                );
              }

              return RefreshIndicator(
                onRefresh: () async {
                  searchController.clear();
                  _resetSelectedCashier();
                  _fetchTransactions();
                },
                child: ListView.separated(
                  itemCount: data.orders!.length,
                  padding: EdgeInsets.only(
                    left: Sizes.height50,
                    right: Sizes.height50,
                    bottom: Sizes.height50,
                  ),
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: Sizes.height33);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return TransactionListItem(order: data.orders![index]);
                  },
                ),
              );
            },
            error: (failure) {
              return MyErrorWidget(
                failure: failure,
                onPressed: _fetchTransactions,
              );
            },
          );
        },
      ),
    );
  }

  _fetchTransactions() {
    GetUtil.context.read<TransactionCubit>().fetchTransactions();
  }

  _resetSelectedCashier() {
    GetUtil.context.read<TransactionCubit>().resetCashierName();
  }
}
