import 'package:flutter/material.dart';

import '../../domain/api_client/api_client.dart';
import '../../domain/entity/news_request.dart';

class MainScreenModel extends ChangeNotifier {
  final _apiClient = ApiClient();
  List<NewsRequest> _news = [];
  final List<NewsRequest> _newsOne = [];

  List<NewsRequest> get news => _news;

  List<NewsRequest> get newsOne => _newsOne;

  Future<void> updateNewsRequests() async {
    final news = await _apiClient.getNews();
    news.sort((a, b) =>( b.lastModified??DateTime(2000)).compareTo(a.lastModified!));
    _news += news;
    notifyListeners();
  }
}

class MainScreenModelProvider extends InheritedNotifier {
  final MainScreenModel model;

  const MainScreenModelProvider({
    super.key,
    required super.child,
    required this.model,
  }) : super(notifier: model);

  static MainScreenModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<MainScreenModelProvider>();
  }

  static MainScreenModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<MainScreenModelProvider>()
        ?.widget;

    return widget is MainScreenModelProvider ? widget : null;
  }

  void onNewsItemTap(BuildContext context, int index) {
    // final id = _news[index].id;

    // Navigator.of(context).pushNamed(
    //   MainNavigationRouteNames.pageOfNews,
    //   // arguments.id,
    //
    //
    // );
  }
}
