import 'package:flutter/services.dart';

class RangeFormatter extends TextInputFormatter {
  final int min;
  final int max;

  RangeFormatter({required this.min, required this.max});

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final oldValueConverted = oldValue.text;
    final newValueConverted = newValue.text;
    if (newValue.text == '') {
      return newValue;
    } else if (int.parse(newValueConverted) < min) {
      return const TextEditingValue().copyWith(
        text: min.toString(),
        selection: TextSelection.fromPosition(
          TextPosition(offset: min.toString().length),
        ),
      );
    } else {
      return int.parse(newValueConverted) > max
          ? const TextEditingValue().copyWith(
              text: oldValueConverted,
              selection: TextSelection.fromPosition(
                TextPosition(offset: oldValueConverted.length),
              ),
            )
          : const TextEditingValue().copyWith(
              text: newValueConverted,
              selection: TextSelection.fromPosition(
                TextPosition(offset: newValueConverted.length),
              ),
            );
    }
  }
}
