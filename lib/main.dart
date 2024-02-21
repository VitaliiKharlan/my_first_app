import 'package:flutter/material.dart';

import 'app/my_app.dart';
import 'domain/api_client/api_client.dart';
import 'ui/screens/main_screen_model.dart';

void main() {
  ApiClient().getNews();
  ApiClient().getLastModified();


  final a = DateTime.now().toIso8601String();
  print(a);

  runApp(const MyApp());
}
