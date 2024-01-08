import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
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
              controller: _textController,
              onChanged: (value) {
                print(_textController.text);
              },
              decoration: const InputDecoration(
                labelText: 'Seoul library',
                border: OutlineInputBorder(),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        title: Text('도서관명'),
                        subtitle: Text('전화번호'),
                        trailing: Text('정기휴관일'),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
