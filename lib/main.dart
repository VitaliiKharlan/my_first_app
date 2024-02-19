import 'package:flutter/material.dart';

import 'app/my_app.dart';
import 'domain/api_client/api_client.dart';
import 'ui/screens/main_screen_model.dart';

void main() {
  // final model = MainScreenModel();
  // print(model.news.first.name);
  //
  ApiClient().getNews();
  //
  // ApiClient().createTestRequest(
  //     id: 'id',
  //     symbol: 'asd',
  //     name: 'asd',
  //     exchange: 'asd',
  //     mic: 'asd',
  //     quantityPrecision: 100,
  //     currency: 'asd',
  //     isInternal: true,
  //     issueType: 'asd',
  //     assetClass: 'asd',
  //     logo: 'asd',
  //     tags: ['qwe', 'qwe'],
  //     sortOrder: 200,
  //     lastModified: 'asd',
  //     summary: {'10': 'zxc', '11': 'zxc', '12': 'zxc'});

  runApp(const MyApp());
}
