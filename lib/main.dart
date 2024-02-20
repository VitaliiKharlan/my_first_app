import 'package:flutter/material.dart';

import 'app/my_app.dart';
import 'domain/api_client/api_client.dart';

void main() {
  ApiClient().getNews();

  runApp(const MyApp());
}
