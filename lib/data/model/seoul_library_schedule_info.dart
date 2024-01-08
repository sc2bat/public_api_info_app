class SeoulLibraryScheduleInfo {
  int listTotalCount;
  Result result;
  List<Row> row;

  SeoulLibraryScheduleInfo({
    required this.listTotalCount,
    required this.result,
    required this.row,
  });

  factory SeoulLibraryScheduleInfo.fromJson(Map<String, dynamic> json) {
    return SeoulLibraryScheduleInfo(
      listTotalCount: json['list_total_count'],
      result: Result.fromJson(json['RESULT']),
      row: List<Row>.from(json['row'].map((x) => Row.fromJson(x))),
    );
  }
}

class Result {
  String code;
  String message;

  Result({
    required this.code,
    required this.message,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      code: json['CODE'],
      message: json['MESSAGE'],
    );
  }
}

class Row {
  String schdulId;
  String schdulTitle;
  String dateFrom;
  String dateTo;
  String timeFrom;
  String timeTo;
  String schdulTy;
  String schdulNm;
  String period;
  String periodNm;
  String periodValue;
  String spnser;
  String place;
  String city;
  String referUrl;
  String schdulCntent;

  Row({
    required this.schdulId,
    required this.schdulTitle,
    required this.dateFrom,
    required this.dateTo,
    required this.timeFrom,
    required this.timeTo,
    required this.schdulTy,
    required this.schdulNm,
    required this.period,
    required this.periodNm,
    required this.periodValue,
    required this.spnser,
    required this.place,
    required this.city,
    required this.referUrl,
    required this.schdulCntent,
  });

  factory Row.fromJson(Map<String, dynamic> json) {
    return Row(
      schdulId: json['SCHDUL_ID'],
      schdulTitle: json['SCHDUL_TITLE'],
      dateFrom: json['DATE_FROM'],
      dateTo: json['DATE_TO'],
      timeFrom: json['TIME_FROM'],
      timeTo: json['TIME_TO'],
      schdulTy: json['SCHDUL_TY'],
      schdulNm: json['SCHDUL_NM'],
      period: json['PERIOD'],
      periodNm: json['PERIOD_NM'],
      periodValue: json['PERIOD_VALUE'],
      spnser: json['SPNSER'],
      place: json['PLACE'],
      city: json['CITY'],
      referUrl: json['REFER_URL'],
      schdulCntent: json['SCHDUL_CNTENT'],
    );
  }
}
