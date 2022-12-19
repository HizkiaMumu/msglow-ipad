import 'package:flutter/material.dart';

import '../../../../../core/style/color_palettes.dart';
import '../../../../../core/style/sizes.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/my_text.dart';
import '../../../../../data/remote/response/transaction/outcome/outcomes_response.dart';

class InputPengeluaranTable extends StatelessWidget {
  final OutcomesResponse outcomesResponse;

  const InputPengeluaranTable({Key? key, required this.outcomesResponse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: Sizes.width68,
      ),
      child: Container(
        color: ColorPalettes.bgGrey4,
        margin: EdgeInsets.symmetric(
          horizontal: Sizes.width68,
        ),
        child: Table(
          border: TableBorder.all(
            color: ColorPalettes.goldDark,
          ),
          children: [
            // title
            TableRow(
              decoration: BoxDecoration(
                color: ColorPalettes.bgGoldOp10,
              ),
              children: [
                MyText(
                  text: 'Judul',
                  fontWeight: FontWeight.w600,
                  fontSize: Sizes.sp16,
                  margin: EdgeInsets.only(
                    left: Sizes.width29,
                    top: Sizes.height11,
                    bottom: Sizes.height11,
                  ),
                  color: ColorPalettes.goldDark,
                  textAlign: TextAlign.left,
                ),
                MyText(
                  text: 'Deskripsi',
                  fontWeight: FontWeight.w600,
                  fontSize: Sizes.sp16,
                  margin: EdgeInsets.only(
                    left: Sizes.width29,
                    top: Sizes.height11,
                    bottom: Sizes.height11,
                  ),
                  color: ColorPalettes.goldDark,
                  textAlign: TextAlign.left,
                ),
                MyText(
                  text: 'Nominal',
                  fontWeight: FontWeight.w600,
                  fontSize: Sizes.sp16,
                  margin: EdgeInsets.only(
                    right: Sizes.width29,
                    top: Sizes.height11,
                    bottom: Sizes.height11,
                  ),
                  color: ColorPalettes.goldDark,
                  textAlign: TextAlign.end,
                ),
              ],
            ),
            // value
            ...outcomesResponse.outcomes!.map((e) {
              return TableRow(
                children: [
                  MyText(
                    text: e.title ?? '-',
                    fontSize: Sizes.sp14,
                    margin: EdgeInsets.only(
                      left: Sizes.width29,
                      top: Sizes.height11,
                      bottom: Sizes.height11,
                    ),
                    color: ColorPalettes.goldDark,
                    textAlign: TextAlign.start,
                  ),
                  MyText(
                    text: e.description ?? '-',
                    fontSize: Sizes.sp14,
                    margin: EdgeInsets.only(
                      left: Sizes.width29,
                      top: Sizes.height11,
                      bottom: Sizes.height11,
                    ),
                    color: ColorPalettes.goldDark,
                    textAlign: TextAlign.start,
                  ),
                  MyText(
                    text: formatToIdr(e.amount),
                    fontSize: Sizes.sp14,
                    margin: EdgeInsets.only(
                      right: Sizes.width29,
                      top: Sizes.height11,
                      bottom: Sizes.height11,
                    ),
                    color: ColorPalettes.goldDark,
                    textAlign: TextAlign.end,
                  ),
                ],
              );
            }).toList(),
            // total
            TableRow(
              children: [
                MyText(
                  text: '',
                  fontSize: Sizes.sp14,
                  margin: EdgeInsets.only(
                    left: Sizes.width29,
                    top: Sizes.height11,
                    bottom: Sizes.height11,
                  ),
                  color: ColorPalettes.goldDark,
                  textAlign: TextAlign.start,
                ),
                MyText(
                  text: 'Total',
                  fontSize: Sizes.sp16,
                  margin: EdgeInsets.only(
                    right: Sizes.width29,
                    top: Sizes.height11,
                    bottom: Sizes.height11,
                  ),
                  color: ColorPalettes.goldDark,
                  textAlign: TextAlign.end,
                  fontWeight: FontWeight.w600,
                ),
                MyText(
                  text: formatToIdr(outcomesResponse.total),
                  fontSize: Sizes.sp16,
                  margin: EdgeInsets.only(
                    right: Sizes.width29,
                    top: Sizes.height11,
                    bottom: Sizes.height11,
                  ),
                  color: ColorPalettes.goldDark,
                  textAlign: TextAlign.end,
                  fontWeight: FontWeight.w600,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
