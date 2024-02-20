import 'package:flutter/material.dart';
import '../../domain/api_client/api_client.dart';
import '../../domain/entity/news_request.dart';

class MainScreenModel extends ChangeNotifier {
  final apiClient = ApiClient();
  var _news = <NewsRequest>[];

  List<NewsRequest> get news => _news;

  Future<void> updateNewsRequests() async {
    final news = await apiClient.getNews();
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
}
