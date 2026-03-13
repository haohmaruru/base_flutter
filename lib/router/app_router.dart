import 'package:base_flutter/app/app_global_define.dart';
import 'package:base_flutter/router/app_page_route.dart';
import 'package:base_flutter/ui/detail/detail_page.dart';
import 'package:base_flutter/ui/example_list/example_list_page.dart';
import 'package:base_flutter/ui/home/home_page.dart';
import 'package:base_flutter/ui/login/login_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  observers: [FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance)],
  initialLocation: AppPageRoute.login,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: AppPageRoute.home,
      builder: (context, state) => HomePage(),
      routes: [
        GoRoute(
          path: AppPageRoute.detail,
          builder: (context, state) {
            final id = state.pathParameters['id'];
            return DetailPage(id: id);
          },
        ),
      ],
    ),
    GoRoute(path: AppPageRoute.login, builder: (context, state) => LoginPage()),
    GoRoute(path: AppPageRoute.exampleList, builder: (context, state) => ExampleListPage()),
  ],
  // redirect: (context, state) async {
  //   // if app is not log in yet and try to access any page except login,
  //   // redirect to login page
  //   final accessToken = await di.get<LocalStorage>().getUserAccessToken();
  //   if (state.fullPath != AppPageRoute.login && accessToken?.isNotEmpty != true) {
  //     return AppPageRoute.login;
  //   } else {
  //     return null;
  //   }
  // },
);

class Navigation {
  /// Navigate to a location and clear page stack
  static void goToPage(String location, {Object? extra}) {
    rootNavigatorKey.currentState?.context.go(location, extra: extra);
  }

  /// Push a location onto the page stack.
  static void addPage(String location, {Object? extra}) {
    rootNavigatorKey.currentState?.context.push(location, extra: extra);
  }

  /// Replaces the top-most page of the page stack with the given URL location
  /// w/ optional query parameters, e.g. `/family/f2/person/p1?color=blue`.
  static void addPageAndReplacement(String location, {Object? extra}) {
    rootNavigatorKey.currentState?.context.pushReplacement(location, extra: extra);
  }
}
