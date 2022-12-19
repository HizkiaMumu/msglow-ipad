import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

import '../style/color_palettes.dart';
import '../style/sizes.dart';
import '../utils/form_builder_util.dart';
import 'my_text.dart';

class MyDateFormField extends StatelessWidget {
  final String label, name;
  final TextInputType? keyboardType;
  final Function(DateTime?)? onChanged;
  final EdgeInsets? padding;
  final Axis direction;
  final double? textFieldWidth;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;

  const MyDateFormField({
    Key? key,
    required this.label,
    this.keyboardType,
    required this.name,
    this.onChanged,
    this.padding,
    this.direction = Axis.vertical,
    this.textFieldWidth,
    this.hintText,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: direction == Axis.vertical
          ? Column(
              children: [
                _buildLabel(),
                _buildTextField(context),
              ],
            )
          : Row(
              children: [
                Expanded(
                  child: _buildLabel(),
                ),
                _buildTextField(context),
              ],
            ),
    );
  }

  Widget _buildLabel() {
    return MyText(
      text: label,
      fontWeight: FontWeight.w700,
      fontSize: Sizes.sp18,
      color: ColorPalettes.grey75,
      height: Sizes.height42,
      alignment: Alignment.centerLeft,
    );
  }

  Widget _buildTextField(BuildContext context) {
    return FormBuilderDateTimePicker(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: TextStyle(
        fontSize: Sizes.sp18,
        // height: 3,
      ),
      format: DateFormat('dd MMMM yyyy'),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      initialDatePickerMode: DatePickerMode.day,
      inputType: InputType.date,
      name: name,
      validator: FormBuilderValidators.compose(
        [
          FormBuilderUtil.emptyValidator(context),
        ],
      ),
      decoration: InputDecoration(
        hintText: hintText,
        constraints: BoxConstraints(
          maxWidth: textFieldWidth ?? double.infinity,
        ),
        errorStyle: TextStyle(
          fontSize: Sizes.sp18,
          height: 1,
        ),
        isDense: true,
        filled: true,
        contentPadding: EdgeInsets.symmetric(
          vertical: Sizes.height24,
          horizontal: Sizes.width16,
        ),
        fillColor: ColorPalettes.greyForm2,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Sizes.radius6),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
