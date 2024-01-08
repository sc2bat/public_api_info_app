import 'package:flutter/material.dart';
import 'package:library_list/screen/main_view_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _textController = TextEditingController();
  final viewModel = MainViewModel();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    viewModel.searchInfo(_textController.text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('quwer ${viewModel.libraryItems.length}');
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
                    itemCount: viewModel.libraryItems.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 30,
                        width: double.infinity,
                        color: Colors.red,
                        child: ListTile(
                          title: Text(viewModel.libraryItems[index].toString()),
                          subtitle: const Text('전화번호'),
                          trailing: const Text('정기휴관일'),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
