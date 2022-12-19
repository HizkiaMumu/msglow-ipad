import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/image_asset.dart';
import '../../../../core/style/color_palettes.dart';
import '../../../../core/style/sizes.dart';
import '../../../../core/utils/form_builder_util.dart';
import '../../../../core/widgets/my_text.dart';

class ProfileBaseForm extends StatefulWidget {
  final String label;
  final String? hintText, initialValue;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final Function(String?) onChanged;
  final bool obscureType;

  const ProfileBaseForm({
    Key? key,
    required this.label,
    this.initialValue,
    this.keyboardType,
    this.focusNode,
    required this.onChanged,
    this.obscureType = false,
    this.hintText,
  }) : super(key: key);

  @override
  State<ProfileBaseForm> createState() => _ProfileBaseFormState();
}

class _ProfileBaseFormState extends State<ProfileBaseForm> {
  bool _readOnly = true;

  @override
  void initState() {
    widget.focusNode?.addListener(() {
      if (!(widget.focusNode?.hasFocus ?? true)) {
        setState(() {
          _readOnly = true;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    widget.focusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MyText(
            text: widget.label,
            fontSize: Sizes.sp18,
            color: ColorPalettes.grey75,
          ),
        ),
        SizedBox(
          width: Sizes.width301,
          // height: Sizes.height48,
          child: FormBuilderTextField(
            initialValue: widget.initialValue,
            keyboardType: widget.keyboardType,
            readOnly: _readOnly,
            focusNode: widget.focusNode,
            obscureText: widget.obscureType,
            style: TextStyle(
              fontSize: Sizes.sp18,
              color: _readOnly ? ColorPalettes.grey25 : null,
              // height: Sizes.height33 / Sizes.sp18,
            ),
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyle(
                fontSize: Sizes.sp18,
                color: _readOnly ? ColorPalettes.grey25 : null,
              ),
              errorStyle: TextStyle(
                fontSize: Sizes.sp18,
                height: 1,
              ),
              isDense: true,
              filled: true,
              fillColor: ColorPalettes.bgGreyForm,
              contentPadding: EdgeInsets.symmetric(
                vertical: Sizes.height10,
                horizontal: Sizes.width16,
              ),
              suffix: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    if (_readOnly) {
                      setState(() {
                        _readOnly = !_readOnly;
                      });
                      widget.focusNode?.requestFocus();
                    }
                  },
                  child: SvgPicture.asset(
                    ImageAsset.icEdit,
                    height: Sizes.height24,
                    width: Sizes.height24,
                  ),
                ),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: ColorPalettes.greyFormBorder,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: ColorPalettes.greyFormBorder,
                ),
              ),
            ),
            name: '',
            validator: FormBuilderValidators.compose(
              [
                FormBuilderUtil.emptyValidator(context),
              ],
            ),
            onChanged: widget.onChanged,
          ),
        ),
      ],
    );
  }
}
