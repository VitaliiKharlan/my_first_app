import 'package:flutter/material.dart';
import '../widgets/news_detail_info_widget.dart';

abstract class MainNavigationRouteNames {
  static const pageOfNews = '/news_details';
}

class MainNavigation {
  late final int index;
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.pageOfNews: (context) =>
    const NewsDetailInfoWidget(),
  };

  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationRouteNames.pageOfNews:
      // final arguments = settings.arguments;
      // final news = arguments is int ? arguments : 0;
        return MaterialPageRoute(
          builder: (context) => const NewsDetailInfoWidget(),
        );

      default:
        const widget = Text('Navigation ERROR !!!');
        return MaterialPageRoute(builder: (context) => widget);
    }
  }
}
