import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app/my_app.dart';
import 'domain/api_client/api_client.dart';
import 'domain/entity/news_request.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ApiClient().getNews();

  await Hive.initFlutter();
  Hive.registerAdapter(NewsRequestAdapter());

  final newsRequestBox = await Hive.openBox<NewsRequest>('news_request_box');

  final favorite = newsRequestBox.get('news_request_box');
  debugPrint(favorite.toString());

  debugPrint(newsRequestBox.values.toString());

  await newsRequestBox.compact();
  await newsRequestBox.close();

  runApp(const MyApp());
}
