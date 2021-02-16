import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:strv_app_implemented/features/comics_detail/presentation/pages/comics_detail_page.dart';
import 'package:strv_app_implemented/features/home/presentation/cubit/home_feed_cubit.dart';
import 'package:strv_app_implemented/main_screen.dart';
import 'package:strv_app_implemented/router/fade_in_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  final homeFeedCubit = HomeFeedCubit();

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return FadeInRoute(
          widget: BlocProvider(
            create: (context) => homeFeedCubit,
            child: MainScreen(),
          ),
        );
        break;

      case ComicsDetailPage.ROUTE_NAME:
        return FadeInRoute(widget: ComicsDetailPage(args: routeSettings.arguments));
        break;

      default:
        return null;
    }
  }

  void dispose() {
    homeFeedCubit.close();
  }
}
