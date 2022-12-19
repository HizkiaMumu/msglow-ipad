import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_kasir/core/widgets/primary_button.dart';
import 'package:flutter_kasir/core/widgets/secondary_button.dart';

import '../constants/strings.dart';
import '../style/color_palettes.dart';
import '../style/sizes.dart';
import '../utils/form_builder_util.dart';
import '../utils/get_util.dart';
import '../utils/theme_util.dart';
import 'my_text.dart';
import 'my_text_form_field.dart';

class ActualEndingCashDialog extends StatelessWidget {
  ActualEndingCashDialog({Key? key}) : super(key: key);

  final _formActualEndingCash = '_formActualEndingCash';
  final _formKey = GlobalKey<FormBuilderState>();
  final TextEditingController _textEditingController = TextEditingController();


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
          padding: EdgeInsets.all(Sizes.height36),
          width: Sizes.width677,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Sizes.radius10),
          ),
          child: FormBuilder(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MyText(
                    text: 'Silahkan Input Actual Ending Cash!',
                    fontSize: Sizes.sp27,
                    fontWeight: FontWeight.w500,
                    color: ColorPalettes.greyText6,
                    margin: EdgeInsets.only(
                      bottom: Sizes.height40,
                    ),
                  ),
                  TextFormField(
                    controller: _textEditingController,
                    keyboardType: TextInputType.number,
                    validator: FormBuilderValidators.compose(
                      [
                        FormBuilderUtil.emptyValidator(context),
                      ],
                    ),
                    style: TextStyle(
                      fontSize: Sizes.sp27,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: ColorPalettes.greyForm,
                      hintText: '0',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(Sizes.radius5),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: Sizes.height16,
                        horizontal: Sizes.width16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: Sizes.height40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SecondaryButton(
                          text: Strings.cancel,
                          onPressed: _onPressedCancel,
                          height: Sizes.height66,
                          width: Sizes.width285,
                        ),
                        PrimaryButton(
                          text: 'Cetak',
                          onPressed: _onPressedCetak,
                          height: Sizes.height66,
                          width: Sizes.width285,
                        ),
                      ],
                    )
                  )
                ],
              ),
            ),
          ),
        ));
  }
  _onPressedCetak() {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      GetUtil.dismissDialog(result: _textEditingController.text);
    }
  }

  _onPressedCancel() {
    GetUtil.dismissDialog();
  }
}
