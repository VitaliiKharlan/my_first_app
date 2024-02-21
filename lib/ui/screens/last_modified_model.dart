import 'package:flutter/material.dart';

import '../../domain/api_client/api_client.dart';
import '../../domain/entity/last_modified_news_request.dart';
import '../../domain/entity/news_request.dart';

class LastModifiedModel extends ChangeNotifier {
  final _apiClient = ApiClient();


  List<LastModifiedNewsRequest> _lastModified = [];

  List<LastModifiedNewsRequest> get lastModified => _lastModified;

  static int _parseNewsLastModifiedToJson(DateTime? time) =>
      time!.millisecondsSinceEpoch;

  static DateTime _parseNewsLastModifiedToJsonFromJson(int milliseconds) =>
      DateTime.fromMillisecondsSinceEpoch(milliseconds);

  Future<void> updateLastModifiedNewsRequest() async {
    final lastModified = await _apiClient.getLastModified();
    _lastModified += lastModified;
    notifyListeners();
  }

}

class LastModifiedModelProvider extends InheritedNotifier {
  final LastModifiedModel modelLastModified;

  const LastModifiedModelProvider({
    super.key,
    required super.child,
    required this.modelLastModified,
  }) : super(notifier: modelLastModified);

  static LastModifiedModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<LastModifiedModelProvider>();
  }

  static LastModifiedModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<LastModifiedModelProvider>()
        ?.widget;

    return widget is LastModifiedModelProvider ? widget : null;
  }
}
