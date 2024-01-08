import 'dart:math';

import 'package:library_list/data/data_source/seoul_library_schedule_info_api.dart';
import 'package:library_list/data/model/seoul_library_schedule_info.dart';

class MainViewModel {
  final libraryAPi = SeoulLibraryScheduleInfoApi();

  List<RowInfo> _libraryItems = [];
  List<RowInfo> get libraryItems => _libraryItems;

  late SeoulLibraryTimeInfo _library;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> searchInfo(String query) async {
    _isLoading = true;

    SeoulLibraryTimeInfo dump = SeoulLibraryTimeInfo.fromJson(
        libraryAPi.getSeoulLibraryScheduleInfoList());

    _libraryItems = dump.rowInfo ?? [];

    _isLoading = false;
  }
}
