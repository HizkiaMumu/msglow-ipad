import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/style/color_palettes.dart';
import '../../../../core/style/sizes.dart';
import '../../../../core/widgets/my_text.dart';
import '../../../../data/remote/response/transaction/incomes_response.dart';

class KasMasukView extends StatelessWidget {
  final IncomeResponse? data;

  const KasMasukView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: Sizes.width40),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Table(
              border: TableBorder.all(color: ColorPalettes.gold),
              children: [
                _buildTableHeader(),
                ...(data?.incomes
                        .map((e) => _buildTableRow(
                              judul: e.title,
                              deskprisi: e.description,
                              nominal: e.amount,
                            ))
                        .toList() ??
                    [])
              ],
            ),
            _buildTableFooter(nominal: data?.total ?? 0.0)
          ],
        ),
      ),
    );
  }

  TableRow _buildTableHeader() {
    return TableRow(
      children: [
        TableCell(
          child: Container(
            color: Colors.grey[300],
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.width20, vertical: Sizes.height10),
            child: const MyText(
              text: "Judul",
              fontWeight: FontWeight.bold,
              color: ColorPalettes.gold,
            ),
          ),
        ),
        TableCell(
          child: Container(
            color: Colors.grey[300],
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.width20, vertical: Sizes.height10),
            child: const MyText(
              text: "Deskripsi",
              fontWeight: FontWeight.bold,
              color: ColorPalettes.gold,
            ),
          ),
        ),
        TableCell(
          child: Container(
            alignment: Alignment.centerRight,
            color: Colors.grey[300],
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.width20, vertical: Sizes.height10),
            child: const MyText(
              text: "Nominal",
              fontWeight: FontWeight.bold,
              color: ColorPalettes.gold,
            ),
          ),
        ),
      ],
    );
  }

  TableRow _buildTableRow(
      {required String judul,
      required String deskprisi,
      required double nominal}) {
    return TableRow(
      children: [
        TableCell(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.width20, vertical: Sizes.height10),
            child: MyText(
              text: judul,
              color: ColorPalettes.gold,
            ),
          ),
        ),
        TableCell(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.width20, vertical: Sizes.height10),
            child: MyText(
              text: deskprisi,
              color: ColorPalettes.gold,
            ),
          ),
        ),
        TableCell(
          child: Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.width20, vertical: Sizes.height10),
            child: MyText(
              text: NumberFormat.simpleCurrency(
                      locale: "ID", name: "Rp ", decimalDigits: 0)
                  .format(nominal),
              color: ColorPalettes.gold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTableFooter({required double nominal}) {
    return Container(
      decoration: const BoxDecoration(
          border: Border.symmetric(
              vertical: BorderSide(color: ColorPalettes.gold))),
      child: Row(
        children: [
          const Expanded(child: SizedBox()),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(
                  horizontal: Sizes.width20, vertical: Sizes.height10),
              child: const MyText(
                text: "Total",
                color: ColorPalettes.gold,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(
                  horizontal: Sizes.width20, vertical: Sizes.height10),
              child: MyText(
                text: NumberFormat.simpleCurrency(
                        locale: "ID", name: "Rp ", decimalDigits: 0)
                    .format(nominal),
                color: ColorPalettes.gold,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
