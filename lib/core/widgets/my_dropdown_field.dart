import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../style/color_palettes.dart';
import '../style/sizes.dart';
import '../utils/form_builder_util.dart';
import 'my_text.dart';

class MyDropdownField<T> extends StatelessWidget {
  final String label, name;
  final Function(T?) onChanged;
  final EdgeInsets? padding;
  final List<DropdownMenuItem<T>> items;
  final bool mandatory;

  const MyDropdownField({
    Key? key,
    required this.label,
    required this.name,
    required this.onChanged,
    this.padding,
    required this.items,
    this.mandatory = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Column(
        children: [
          MyText(
            text: label,
            fontWeight: FontWeight.w700,
            fontSize: Sizes.sp18,
            color: ColorPalettes.grey75,
            height: Sizes.height42,
            alignment: Alignment.centerLeft,
          ),
          FormBuilderDropdown<T>(
            items: items,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: TextStyle(
              fontSize: Sizes.sp18,
              // height: 3,
            ),
            decoration: InputDecoration(
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
            validator: mandatory
                ? FormBuilderValidators.compose(
                    [
                      FormBuilderUtil.emptyValidator(context),
                    ],
                  )
                : null,
            name: name,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
