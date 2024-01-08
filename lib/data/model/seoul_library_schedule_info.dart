class SeoulLibraryScheduleInfo {
  SeoulLibraryScheduleInfo({
    this.seoulLibraryTimeInfo,
  });

  SeoulLibraryScheduleInfo.fromJson(dynamic json) {
    seoulLibraryTimeInfo = json['SeoulLibraryTimeInfo'] != null
        ? SeoulLibraryTimeInfo.fromJson(json['SeoulLibraryTimeInfo'])
        : null;
  }
  SeoulLibraryTimeInfo? seoulLibraryTimeInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (seoulLibraryTimeInfo != null) {
      map['SeoulLibraryTimeInfo'] = seoulLibraryTimeInfo?.toJson();
    }
    return map;
  }
}

class SeoulLibraryTimeInfo {
  SeoulLibraryTimeInfo({
    this.listTotalCount,
    this.result,
    this.rowInfo,
  });

  SeoulLibraryTimeInfo.fromJson(dynamic json) {
    listTotalCount = json['list_total_count'];
    result = json['RESULT'] != null ? Result.fromJson(json['RESULT']) : null;
    if (json['row'] != null) {
      rowInfo = [];
      json['row'].forEach((v) {
        rowInfo?.add(RowInfo.fromJson(v));
      });
    }
  }
  num? listTotalCount;
  Result? result;
  List<RowInfo>? rowInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['list_total_count'] = listTotalCount;
    if (result != null) {
      map['RESULT'] = result?.toJson();
    }
    if (rowInfo != null) {
      map['row'] = rowInfo?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class RowInfo {
  RowInfo({
    this.lbrryseqno,
    this.lbrryname,
    this.gucode,
    this.codevalue,
    this.adres,
    this.fdrmclosedate,
    this.telno,
    this.xcnts,
    this.ydnts,
  });

  RowInfo.fromJson(dynamic json) {
    lbrryseqno = json['LBRRY_SEQ_NO'];
    lbrryname = json['LBRRY_NAME'];
    gucode = json['GU_CODE'];
    codevalue = json['CODE_VALUE'];
    adres = json['ADRES'];
    fdrmclosedate = json['FDRM_CLOSE_DATE'];
    telno = json['TEL_NO'];
    xcnts = json['XCNTS'];
    ydnts = json['YDNTS'];
  }
  String? lbrryseqno;
  String? lbrryname;
  String? gucode;
  String? codevalue;
  String? adres;
  String? fdrmclosedate;
  String? telno;
  String? xcnts;
  String? ydnts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['LBRRY_SEQ_NO'] = lbrryseqno;
    map['LBRRY_NAME'] = lbrryname;
    map['GU_CODE'] = gucode;
    map['CODE_VALUE'] = codevalue;
    map['ADRES'] = adres;
    map['FDRM_CLOSE_DATE'] = fdrmclosedate;
    map['TEL_NO'] = telno;
    map['XCNTS'] = xcnts;
    map['YDNTS'] = ydnts;
    return map;
  }
}

class Result {
  Result({
    this.code,
    this.message,
  });

  Result.fromJson(dynamic json) {
    code = json['CODE'];
    message = json['MESSAGE'];
  }
  String? code;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['CODE'] = code;
    map['MESSAGE'] = message;
    return map;
  }
}
