import 'package:library_list/data/data_source/seoul_library_schedule_info_api.dart';
import 'package:library_list/data/model/seoul_library_schedule_info.dart';

class MainViewModel {
  final libraryAPi = SeoulLibraryScheduleInfoApi();

List<SeoulLibraryScheduleInfo> _libraryItems = [];
List<SeoulLibraryScheduleInfo> get libraryItems => _libraryItems;

bool _isLoading = false;
bool get isLoading => _isLoading;

Future<void> searchInfo(String query) async {
  _isLoading = true;

 _libraryItems = await SeoulLibraryScheduleInfo.fromJson(
     libraryAPi.getSeoulLibraryScheduleInfoList()
 )

}


}