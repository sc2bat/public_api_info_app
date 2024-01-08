class LibraryInfo {
  String librarySeqNo;
  String libraryName;
  String guCode;
  String codeValue;
  String address;
  String formCloseDate;
  String telNo;
  String xcnts;
  String ydnts;

  LibraryInfo({
    required this.librarySeqNo,
    required this.libraryName,
    required this.guCode,
    required this.codeValue,
    required this.address,
    required this.formCloseDate,
    required this.telNo,
    required this.xcnts,
    required this.ydnts,
  });

  factory LibraryInfo.fromJson(Map<String, dynamic> json) {
    return LibraryInfo(
      librarySeqNo: json['LBRRY_SEQ_NO'],
      libraryName: json['LBRRY_NAME'],
      guCode: json['GU_CODE'],
      codeValue: json['CODE_VALUE'],
      address: json['ADRES'],
      formCloseDate: json['FDRM_CLOSE_DATE'],
      telNo: json['TEL_NO'] ?? '정보없음',
      xcnts: json['XCNTS'],
      ydnts: json['YDNTS'],
    );
  }
}
