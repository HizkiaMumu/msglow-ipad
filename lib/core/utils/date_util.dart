import 'package:intl/intl.dart';

class DateUtil {
  const DateUtil._();

  static String toFormattedDate(
    String? strDate, {
    String datePattern = "dd MMMM yyyy",
  }) {
    if (strDate == null) return "-";
    return DateFormat(datePattern, 'id_ID').format(
      DateTime.parse(strDate).toLocal(),
    );
  }

  static String dateTimeToFormattedDate(
    DateTime? dateTime, {
    String datePattern = "dd MMMM yyyy",
  }) {
    if (dateTime == null) return "-";
    return DateFormat(datePattern, 'id_ID').format(
      dateTime.toLocal(),
    );
  }

  static String formatCurrentDate({
    String datePattern = "dd MMMM yyyy",
  }) {
    return DateFormat(datePattern, 'id_ID').format(
      DateTime.now().toLocal(),
    );
  }

  // static String diffWithCurrent(String? strDate) {
  //   if (strDate == null) return "-";
  //   final currentDate = DateTime.now();
  //   final givenDate = DateTime.parse(strDate);
  //   final diff = currentDate.difference(givenDate).inSeconds;
  //   if (diff < Duration.secondsPerMinute)
  //     return LocaleKeys.text_seconds_ago.tr(args: ["$diff"]);
  //   if (diff < Duration.secondsPerHour)
  //     return LocaleKeys.text_minutes_ago
  //         .tr(args: ["${diff ~/ Duration.secondsPerMinute}"]);
  //   if (diff < Duration.secondsPerDay)
  //     return LocaleKeys.text_hours_ago
  //         .tr(args: ["${diff ~/ Duration.secondsPerHour}"]);
  //   if (diff < (Duration.secondsPerDay * 30))
  //     return LocaleKeys.text_days_ago
  //         .tr(args: ["${diff ~/ Duration.secondsPerDay}"]);
  //   if (diff < (Duration.secondsPerDay * 30 * 12))
  //     return LocaleKeys.text_months_ago
  //         .tr(args: ["${diff ~/ (Duration.secondsPerDay * 30)}"]);
  //   return LocaleKeys.text_years_ago
  //       .tr(args: ["${diff ~/ (Duration.secondsPerDay * 30 * 12)}"]);
  // }

  static int diffWithNow(String? strDate) {
    if (strDate == null) return 0;
    final currentDate = DateTime.now();
    final givenDate = DateTime.parse(strDate).add(const Duration(hours: 1));
    final diff = givenDate.difference(currentDate).inSeconds;
    return diff;
  }

  // static String diffWithNowText(String? strDate) {
  //   if (strDate == null) return "-";
  //   final currentDate = DateTime.now();
  //   final givenDate = DateTime.parse(strDate).add(Duration(hours: 1));
  //   final diff = givenDate.difference(currentDate).inSeconds;
  //   if (diff > Duration.secondsPerDay)
  //     return LocaleKeys.text_more_days
  //         .tr(args: ["${diff ~/ Duration.secondsPerDay}"]);
  //   if (diff > Duration.secondsPerHour)
  //     return LocaleKeys.text_more_hours
  //         .tr(args: ["${diff ~/ Duration.secondsPerHour}"]);
  //   if (diff > Duration.secondsPerMinute)
  //     return LocaleKeys.text_more_minutes
  //         .tr(args: ["${diff ~/ Duration.secondsPerMinute}"]);
  //   return LocaleKeys.text_more_seconds.tr(args: ["$diff"]);
  // }

  static addDaysToCurrentDate(int days, {String datePattern = "dd MMMM yyyy"}) {
    var date = DateTime.now().toLocal();
    return DateFormat(datePattern, 'id_ID').format(
      DateTime(
        date.year,
        date.month,
        date.day + days,
        date.hour,
        date.minute,
        date.second,
        date.millisecond,
        date.microsecond,
      ),
    );
  }

  static addDaysToDate({
    required int days,
    String? strDate,
    String datePattern = "dd MMMM yyyy",
  }) {
    if (strDate == null) return "-";
    return DateFormat(datePattern, 'id_ID')
        .format(DateTime.parse(strDate).add(Duration(days: days)).toLocal());
  }
}
