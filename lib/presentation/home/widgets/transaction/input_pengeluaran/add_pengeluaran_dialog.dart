import 'package:flutter/material.dart';

import '../../../../../core/style/sizes.dart';
import '../../../../../core/utils/get_util.dart';
import '../../../../../core/widgets/my_text.dart';
import 'add_pengeluaran_form.dart';

class AddPengeluaranDialog extends StatelessWidget {
  static const modePemasukan = 1;
  static const modePengeluaran = 2;
  final int mode;

  const AddPengeluaranDialog({Key? key, this.mode = modePemasukan})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(
        horizontal: Sizes.height24,
        vertical: Sizes.height24,
      ),
      child: Container(
        width: Sizes.width968,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.radius10),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: Sizes.height52,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Sizes.width40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: mode == modePemasukan
                          ? 'Tambah Input Pengeluaran'
                          : "Tambah Input Pemasukan",
                      fontSize: Sizes.sp24,
                    ),
                    InkWell(
                      onTap: () {
                        GetUtil.dismissDialog();
                      },
                      child: const Icon(Icons.close),
                    ),
                  ],
                ),
              ),
              AddPemasukanPengeluaranForm(mode: mode),
            ],
          ),
        ),
      ),
    );
  }
}
