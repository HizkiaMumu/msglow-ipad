import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderUtil {
  const FormBuilderUtil._();

  static FormFieldValidator emptyValidator(BuildContext context) =>
      FormBuilderValidators.required(
        context,
      );

  static FormFieldValidator minAmountValidator(
    BuildContext context, {
    required int min,
    String? errorText,
  }) =>
      FormBuilderValidators.min(
        context,
        min,
        errorText: "Min $min",
      );

  static FormFieldValidator<String> emailValidator(BuildContext context) =>
      FormBuilderValidators.email(
        context,
      );
}
