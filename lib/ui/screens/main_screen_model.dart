import 'package:flutter/material.dart';
import '../../domain/api_client/api_client.dart';
import '../../domain/entity/news_request.dart';

class MainScreenModel extends ChangeNotifier {
  final apiClient = ApiClient();
  var _news = <NewsRequest?>[];

  List<NewsRequest?> get news => _news;

  Future<void> updatePosts() async {
    final news = await apiClient.getNews();
    _news += news;
    notifyListeners();
  }

  // Future<void> updateNews() async {
  //   final newsRequests = await _apiClient.getNews();
  //   _news += _news;
  //   notifyListeners();
  // }
  //
  // Future<void> createNewNews() async {
  //   final newsRequests = await _apiClient.createNews(
  //     title: 'I ADDED THIS',
  //     body: '15.12.2023',

      //
      // id: 'id',
      // symbol: 'asd',
      // name: 'asd',
      // exchange: 'asd',
      // mic: 'asd',
      // quantityPrecision: 100,
      // currency: 'asd',
      // isInternal: true,
      // issueType: 'asd',
      // assetClass: 'asd',
      // logo: 'asd',
      // tags: ['qwe', 'qwe'],
      // sortOrder: 200,
      // lastModified: 'asd',
      // summary: {'10': 'zxc', '11': 'zxc', '12': 'zxc'});
  //   );
  // }
  //
  // Future<void> loadNews() async {
  //   _news = await _apiClient.getNews();
  //   notifyListeners();
  // }
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
