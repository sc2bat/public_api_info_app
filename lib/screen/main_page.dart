import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List result = [];

  @override
  void initState() {
    getData();
    super.initState();
  }

  Dio dio = Dio();

  Future getData() async {
    final response = await dio.get(
        'http://openapi.seoul.go.kr:8088/sample/json/lostArticleInfo/1/5/');
    // print(response.data['lostArticleInfo']['row'][0]['ID']);

    setState(() {
      result = response.data['lostArticleInfo']['row'];
      // print(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('분실물 찾기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: '분실물을 입력하세요',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: result.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: Container(
                      height: 280,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('분실물: ${result[index]['GET_NAME']}', style: TextStyle(fontSize: 20),),
                            Text('상태: ${result[index]['STATUS']}', style: TextStyle(fontSize: 20),),
                            Text('수령일자: ${result[index]['GET_DATE']}', style: TextStyle(fontSize: 20),),
                            Text('수령장소: ${result[index]['TAKE_PLACE']}', style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
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
