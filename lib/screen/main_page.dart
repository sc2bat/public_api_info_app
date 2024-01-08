import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:library_list/data/model/seoul_library_schedule_info.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<LibraryInfo> libraryInfoList = [];

  @override
  void initState() {
    getData();
    super.initState();
  }

  Dio dio = Dio();

  Future getData() async {
    final response = await dio.get(
        'http://openapi.seoul.go.kr:8088/sample/json/SeoulLibraryTimeInfo/1/5/');
    print(response.statusCode);
    print(response.data);
    final resultList = response.data['SeoulLibraryTimeInfo']['row'];
    //error: 이미 map 형태라 디코드를 하면 에러가 난다. => Unhandled Exception: type '_Map<String, dynamic>' is not a subtype of type 'String'
// error: []로 바로 접근해야하고 response.data를 하면 에러가 난다.

    setState(() {
      resultList.forEach((e) {
        libraryInfoList.add(LibraryInfo.fromJson(e));
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('도서관 일정 검색'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(

              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'Seoul library',
                border: OutlineInputBorder(),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: libraryInfoList.length,
                  itemBuilder: (context, index) {
                    return
                         ListTile(
                          title: Text(libraryInfoList[index].libraryName),
                          subtitle: Text(libraryInfoList[index].telNo),
                          trailing: Text(libraryInfoList[index].formCloseDate),
                        );

                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
