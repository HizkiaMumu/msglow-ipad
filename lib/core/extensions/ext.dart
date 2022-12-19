import 'package:intl/intl.dart';

import '../utils/utils.dart';

extension Ext on int? {
  String toIdrOrDash() {
    if (this == null || this == 0) {
      return '-';
    }
    return formatToIdr(this);
  }

  String orDash() {
    if (this == null || this == 0) {
      return '-';
    }
    return toString();
  }
}

extension DoubleExtension on double {
  String toRupiahString() {
    final format = NumberFormat("###,##0.00", "in_ID");
    String result = format.format(this);
    if (result.endsWith(".00") || result.endsWith(",00")) {
      result = result.substring(0, result.length - 3);
    }
    return result;
  }
}

extension StringExtension on String {
  String capitalize() {
    if (isNotEmpty) {
      return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
    }
    return '';
  }

  String toTitleCase() {
    if (isNotEmpty) {
      return replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.capitalize()).join(' ');
    }
    return '';
  }
}
