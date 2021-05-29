import 'dart:io';

void main() {
  final inputDateString = stdin.readLineSync();
  final dateParser = DateParser();
  try {
    final epochTimeStamp = dateParser.dateStringToEpoch(inputDateString);
    print(epochTimeStamp);
  } on DateParseException catch (_) {
    print('Unable to convert the provided date.');
  }
}

class DateParseException implements Exception {
  const DateParseException();
}

class DateParser {
  const DateParser();

  final SupportedDates defaultDateType = SupportedDates.dateType1;

  int dateStringToEpoch(String dateString) {
    try {
      //If string doesn't have a separator add default
      if (dateString.length == 8) {
        dateString = _convertToDefaultType(dateString);
      } else if (dateString.length != 10) {
        throw DateParseException();
      }
      final dateType = _getDateType(dateString);
      final date = _convertToDateTime(dateType, dateString);
      return date.millisecondsSinceEpoch;
    } on DateParseException catch (_) {
      rethrow;
    }
  }

  String _convertToDefaultType(String dateString) {
    return dateString.substring(0, 2) +
        defaultDateType.separator +
        dateString.substring(2, 4) +
        defaultDateType.separator +
        dateString.substring(4, 8);
  }

  SupportedDates _getDateType(String dateString) {
    for (final type in SupportedDates.values) {
      final hasCorrectSeparators =
          dateString[2] == type.separator && dateString[5] == type.separator;
      if (hasCorrectSeparators) {
        return type;
      }
    }
    throw DateParseException();
  }

  DateTime _convertToDateTime(SupportedDates type, String date) {
    try {
      final splitArray = date.split(type.separator);
      final splitFormatArray = type.dateString.split(type.separator);
      if (splitArray.length == splitFormatArray.length) {
        final customDate = CustomDate.fromSplitArray(splitArray);
        return DateTime.parse(customDate.dateString);
      } else {
        throw const DateParseException();
      }
    } catch (_) {
      throw const DateParseException();
    }
  }
}

class CustomDate {
  String _day, _month, _year;
  final String _fixedTime = '00:00:00.000000';

  String get day => _day;

  String get month => _month;

  String get year => _year;

  String get dateString {
    return _year + '-' + _month + '-' + _day + ' ' + _fixedTime;
  }

  CustomDate.fromSplitArray(List<String> splitArray) {
    if (splitArray[1].compareTo('12') > 0) {
      _year = splitArray[2];
      _month = splitArray[0];
      _day = splitArray[1];
    } else {
      _year = splitArray[2];
      _month = splitArray[1];
      _day = splitArray[0];
    }
  }
}

enum SupportedDates {
  dateType1,
  dateType2,
  dateType3,
}

extension XSupportedDates on SupportedDates {
  String get separator {
    switch (this) {
      case SupportedDates.dateType1:
        return '/';
      case SupportedDates.dateType2:
        return '-';
      case SupportedDates.dateType3:
        return '.';
    }
    return null;
  }

  String get dateString {
    switch (this) {
      case SupportedDates.dateType1:
        return 'dd/mm/YYYY';
      case SupportedDates.dateType2:
        return 'dd-mm-YYYY';
      case SupportedDates.dateType3:
        return 'dd.mm.YYYY';
    }
    return null;
  }
}
