import 'package:flutter/material.dart';

import '../../domain/api_client/api_client.dart';
import '../../domain/entity/news_request.dart';
import '../navigation/main_navigation.dart';

class MainScreenModel extends ChangeNotifier {
  final _apiClient = ApiClient();
  List<NewsRequest> _news = [];

  List<NewsRequest> get news => _news;

  List<NewsRequest> get newsNews => _news.toList();

  

  // _news.sort((a,b)=> a["lastModified"].compareTo(b["lastModified"]));
  //
  // task.sort((a,b) => a.createdAt.compareTo(b.createdAt));

  // var _news = <NewsRequest>[];

  // void onNewsItemTap(BuildContext context, int index) {
  //   // final id = _news[index].id;
  //   Navigator.of(context).pushNamed(
  //     MainNavigationRouteNames.pageOfNews,
  //     // arguments.id,
  //   );
  // }

  /// sorting

  List<dynamic> sortJson(
    List<dynamic> data,
    String? sortBy,
  ) {
    /// MODIFY CODE ONLY BELOW THIS LINE

    // null safety
    sortBy ??= 'lastModified';

    data.sort((a, b) {
      // Check if the field to sort by is a nested field (e.g., 'company.name')
      List<String> fields = sortBy!.split('.');

      dynamic aValue = a;
      dynamic bValue = b;

      for (String field in fields) {
        aValue = aValue[field];
        bValue = bValue[field];
      }

      // Compare the values based on their type
      if (aValue is String) {
        return aValue.compareTo(bValue as String);
      } else if (aValue is num) {
        return aValue.compareTo(bValue as num);
      } else {
        throw ArgumentError('Unsupported field type for sorting');
      }
    });

    return data;

    /// MODIFY CODE ONLY ABOVE THIS LINE
  }

  Future<void> updateNewsRequests() async {
    final news = await _apiClient.getNews();
    _news += news;
    notifyListeners();
  }

  

// late DateFormat _dateFormat;
//
// String stringFromDate(DateTime? date) =>
//     date != null ? _dateFormat.format(date) : '';
}

class MainScreenModelProvider extends InheritedNotifier {
  final MainScreenModel model;

  const MainScreenModelProvider({
    super.key,
    required super.child,
    required this.model,
  }) : super(notifier: model);

  get news => null;



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
    Navigator.of(context).pushNamed(
      MainNavigationRouteNames.pageOfNews,
      // arguments.id,
    );
  }
}
