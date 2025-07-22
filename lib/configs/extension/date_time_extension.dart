//date formats
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;

import '../config.dart';

DateFormat apiDateFormat = DateFormat('yyyy-MM-dd');
DateFormat viewDateFormat = DateFormat('dd-MM-yyyy');
DateFormat viewTimeFormat = DateFormat('hh:mm a');
DateFormat viewDateTimeFormat = DateFormat('dd-MM-yyyy hh:mm a');

extension DateTimeExtension on int {
  String timeAgo({bool numericDates = true}) {
    final date2 = convertToTimeZone(DateTime.now());
    final difference = date2.difference(
        convertToTimeZone(DateTime.fromMillisecondsSinceEpoch(this)));
    // final diffDay = difference.inDays;
    // Log.loga('Diff Day : ', diffDay.toString());
    // Log.loga('Date : ', this.toString());
    // printt(difference.inDays);
    //if ((difference.inDays / 7).floor() >= 1) {
    //       return (numericDates) ? '1 week ago' : 'Last week';
    //     } else
    if (difference.inDays == 0) {
      return S.current.today +
          DateFormat(' (hh:mm a)').format(
              convertToTimeZone(DateTime.fromMillisecondsSinceEpoch(this)));
      // return 'Today';
    } else if (difference.inDays == 1) {
      return S.current.yesterday +
          DateFormat(' (hh:mm a)').format(
              convertToTimeZone(DateTime.fromMillisecondsSinceEpoch(this)));
      // return 'Yesterday';
    } else if (difference.inDays >= 2 && difference.inDays <= 3) {
      return DateFormat('EEEE (hh:mm a)')
          .format(convertToTimeZone(DateTime.fromMillisecondsSinceEpoch(this)));
    } else {
      return DateFormat('dd MMMM yyyy (hh:mm a)')
          .format(convertToTimeZone(DateTime.fromMillisecondsSinceEpoch(this)));
    }
  }
}

extension DateTimeFormatExtension on int {
  String dateDisplay() {
    if (this != 0) {
      return viewDateFormat
          .format(convertToTimeZone(DateTime.fromMillisecondsSinceEpoch(this)))
          .toString();
    } else {
      return '-';
    }
  }

  String timeDisplay() {
    if (this != 0) {
      return viewTimeFormat
          .format(convertToTimeZone(DateTime.fromMillisecondsSinceEpoch(this)));
    } else {
      return '-';
    }
  }

  String dateTimeDisplay() {
    if (this != 0) {
      return '${viewDateTimeFormat.format(convertToTimeZone(DateTime.fromMillisecondsSinceEpoch(this)))} ';
    } else {
      return '-';
    }
  }

  String dateFormatForApi() {
    return apiDateFormat
        .format(convertToTimeZone(DateTime.fromMillisecondsSinceEpoch(this)));
  }

  /// Convert UTC DateTime to a specific timezone with hour and minute offsets
  DateTime convertToTimeZone(DateTime dateTime) {
    // Get the location for the desired timezone
    final location = tz.getLocation("Europe/Berlin");

    // Convert the UTC time to the desired timezone
    final converted = tz.TZDateTime.from(dateTime, location);
    return converted;
  }
}
