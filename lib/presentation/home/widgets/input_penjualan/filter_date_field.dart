import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:month_picker_dialog/month_picker_dialog.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/style/color_palettes.dart';
import '../../../../core/style/sizes.dart';
import '../../../../core/utils/date_util.dart';
import '../../../../core/widgets/my_text.dart';
import 'cubit/input_penjualan_cubit.dart';

class FilterDateField extends StatelessWidget {
  const FilterDateField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: Sizes.height50,
        right: Sizes.height50,
        bottom: Sizes.height50,
      ),
      child: BlocSelector<InputPenjualanCubit, InputPenjualanState, DateTime?>(
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
                vertical: Sizes.height21,
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(Sizes.radius13), color: Colors.white),
              child: Row(
                children: [
                  Expanded(
                    child: MyText(
                      text: state == null
                          ? Strings.hintFilterDate
                          : DateUtil.dateTimeToFormattedDate(state, datePattern: 'MMMM yyyy'),
                      color: ColorPalettes.greyText3,
                      fontSize: Sizes.sp20,
                    ),
                  ),
                  const Icon(
                    Icons.date_range_outlined,
                    color: ColorPalettes.grey,
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
    // final _pickedDate = await showMonthPicker(
    //   context: context,
    //   firstDate: DateTime(DateTime.now().year - 1, 5),
    //   lastDate: DateTime(DateTime.now().year + 1, 9),
    //   initialDate: previousDate ?? DateTime.now(),
    // );

    final _pickedDate = await showDatePicker(
      context: context,
      initialDate: previousDate ?? DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 1, 5),
      lastDate: DateTime(DateTime.now().year + 1, 9),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
    );

    if (_pickedDate == null || _pickedDate.month == previousDate?.month) return;

    context.read<InputPenjualanCubit>().changeFilterDate(_pickedDate);
  }
}
