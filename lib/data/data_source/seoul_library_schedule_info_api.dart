import 'dart:convert';

import 'package:http/http.dart' as http;

class SeoulLibraryScheduleInfoApi {
  // http://openapi.seoul.go.kr:8088/sample/json/SeoulLibraryScheduleInfo/1/5/
  static const _baseUrl =
      'http://openapi.seoul.go.kr:8088/sample/json/SeoulLibraryScheduleInfo';

  final url = '$_baseUrl/1/5';

  Future<List<dynamic>> getSeoulLibraryScheduleInfoList() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    throw Exception();
  }
}
