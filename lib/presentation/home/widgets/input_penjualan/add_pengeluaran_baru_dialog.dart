import 'package:flutter/material.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/style/sizes.dart';
import '../../../../core/widgets/my_text.dart';
import 'add_pengeluaran_baru_form.dart';

class AddPengeluaranBaruDialog extends StatelessWidget {
  const AddPengeluaranBaruDialog({Key? key}) : super(key: key);

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
              MyText(
                text: Strings.tambahPengeluaranBaru,
                fontSize: Sizes.sp24,
                margin: EdgeInsets.only(
                  left: Sizes.width40,
                ),
              ),
              const AddPengeluaranBaruForm(),
            ],
          ),
        ),
      ),
    );
  }
}
