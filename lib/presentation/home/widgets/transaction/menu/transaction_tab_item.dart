import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/style/color_palettes.dart';
import '../../../../../core/style/sizes.dart';
import '../../../../../core/widgets/my_text.dart';
import '../cubit/transaction_cubit.dart';

class TransactionTabItem extends StatelessWidget {
  final int index;
  final String title;

  const TransactionTabItem({Key? key, required this.index, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<TransactionCubit>().changeTabIndex(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Sizes.width24,
          vertical: Sizes.height21,
        ),
        decoration: BoxDecoration(
          color: context.select(
                      (TransactionCubit element) => element.state.tabIndex) ==
                  index
              ? ColorPalettes.goldDark3
              : Colors.transparent,
          borderRadius: BorderRadius.circular(Sizes.radius8),
        ),
        child: MyText(
          text: title,
          fontSize: Sizes.sp18,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
