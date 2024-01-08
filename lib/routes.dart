import 'package:go_router/go_router.dart';
import 'package:library_list/screen/main_page.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const MainPage(),
  ),
]);
