import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/style/sizes.dart';
import '../../../../../core/widgets/my_error_widget.dart';
import '../../../../../core/widgets/my_text.dart';
import '../cubit/transaction_cubit.dart';
import 'input_pengeluaran_table.dart';

class InputPengeluaranView extends StatelessWidget {
  const InputPengeluaranView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<TransactionCubit>().fetchOutcomes();

    return BlocListener<TransactionCubit, TransactionState>(
      listenWhen: (previous, current) =>
          previous.addInOutcomeResult != current.addInOutcomeResult,
      listener: (context, state) {
        state.addInOutcomeResult.maybeWhen(
            orElse: () => null,
            success: (data) {
              context.read<TransactionCubit>().fetchOutcomes();
            });
      },
      child: BlocBuilder<TransactionCubit, TransactionState>(
        buildWhen: (previous, current) =>
            previous.fetchOutcomesResult != current.fetchOutcomesResult,
        builder: (context, state) {
          return state.fetchOutcomesResult.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(
                child: CircularProgressIndicator(
              color: Colors.white,
            )),
            success: (data) {
              if (data.outcomes?.isEmpty ?? true) {
                return MyText(
                  text: 'Belum ada pengeluaran',
                  fontSize: Sizes.sp20,
                  fontWeight: FontWeight.w500,
                  alignment: Alignment.center,
                );
              }
              return InputPengeluaranTable(
                outcomesResponse: data,
              );
            },
            error: (failure) {
              return MyErrorWidget(
                failure: failure,
                onPressed: () {
                  context.read<TransactionCubit>().fetchOutcomes();
                },
              );
            },
          );
        },
      ),
    );
  }
}
