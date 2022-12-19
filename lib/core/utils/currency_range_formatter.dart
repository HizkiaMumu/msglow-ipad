import 'package:flutter/services.dart';

import 'utils.dart';

class CurrencyRangeFormatter extends TextInputFormatter {
  final int min;
  final int max;

  CurrencyRangeFormatter({required this.min, required this.max});

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final oldValueConverted = oldValue.text.replaceAll("r'^[Rp.]'", "");
    final newValueConverted = newValue.text.replaceAll("r'^[Rp.]'", "");
    if (newValue.text == '') {
      return newValue;
    } else if (int.parse(newValueConverted) < min) {
      return const TextEditingValue().copyWith(
        text: formatToIdr(min),
        selection: TextSelection.fromPosition(
          TextPosition(offset: formatToIdr(min).length),
        ),
      );
    } else {
      return int.parse(newValueConverted) > max
          ? const TextEditingValue().copyWith(
              text: formatToIdr(int.parse(oldValueConverted)),
              selection: TextSelection.fromPosition(
                TextPosition(
                    offset: formatToIdr(int.parse(oldValueConverted)).length),
              ),
            )
          : const TextEditingValue().copyWith(
              text: formatToIdr(int.parse(newValueConverted)),
              selection: TextSelection.fromPosition(
                TextPosition(
                    offset: formatToIdr(int.parse(newValueConverted)).length),
              ),
            );
    }
  }
}
