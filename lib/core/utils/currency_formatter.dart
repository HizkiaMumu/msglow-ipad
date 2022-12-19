import 'package:flutter/services.dart';

import 'utils.dart';

class CurrencyFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final newValueConverted = newValue.text.replaceAll("r'^[Rp.]'", "");
    if (newValue.text == '') {
      return newValue;
    }
    return const TextEditingValue().copyWith(
      text: formatToIdr(int.parse(newValueConverted)),
      selection: TextSelection.fromPosition(
        TextPosition(offset: formatToIdr(int.parse(newValueConverted)).length),
      ),
    );
  }
}
