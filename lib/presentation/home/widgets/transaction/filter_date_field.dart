import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/style/color_palettes.dart';
import '../../../../core/style/sizes.dart';
import '../../../../core/utils/date_util.dart';
import '../../../../core/utils/get_util.dart';
import '../../../../core/widgets/my_text.dart';
import 'cubit/transaction_cubit.dart';

class FilterDateField extends StatelessWidget {
  final TextEditingController searchController;

  const FilterDateField({Key? key, required this.searchController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Sizes.height50,
        right: Sizes.height50,
        bottom: Sizes.height50,
      ),
      child: BlocSelector<TransactionCubit, TransactionState, DateTime?>(
        selector: (state) {
          return state.filterDate;
        },
        builder: (context, state) {
          return InkWell(
            onTap: () => _onTapFilterDate(context, state),
            child: Container(
              height: Sizes.height70,
              padding: EdgeInsets.symmetric(
                horizontal: Sizes.width27,
                vertical: Sizes.height18,
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(Sizes.radius13), color: Colors.white),
              child: Row(
                children: [
                  Expanded(
                    child: MyText(
                      text: state == null
                          ? Strings.hintFilterDate
                          : DateUtil.dateTimeToFormattedDate(state, datePattern: 'EEEE, dd MMM yyyy'),
                      color: ColorPalettes.greyText3,
                      fontSize: Sizes.sp20,
                    ),
                  ),
                  Icon(
                    Icons.date_range_outlined,
                    color: ColorPalettes.grey,
                    size: Sizes.height32,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _onTapFilterDate(BuildContext context, DateTime? previousDate) async {
    final _pickedDate = await showDatePicker(
      context: context,
      initialDate: previousDate ?? DateTime.now(),
      firstDate: DateTime(1945),
      lastDate: DateTime(2101),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
    );

    if (_pickedDate == null || _pickedDate.day == previousDate?.day) return;

    GetUtil.context.read<TransactionCubit>()
      ..fetchTransactions(filterDate: _pickedDate)
      ..fetchOutcomes(filterDate: _pickedDate)
      ..fetchIncomeList(_pickedDate)
      ..resetCashierName();
    searchController.clear();
  }
}
