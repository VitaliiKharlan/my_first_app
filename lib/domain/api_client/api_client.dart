import 'dart:convert';
import 'dart:io';

import '../entity/news_request.dart';

class ApiClient {
  final _client = HttpClient();

  Future<List<NewsRequest>> getNews() async {
    final json = await helperGet('https://lightyear.ee/api/v1/instrument')
    as List<dynamic>;

    final newsRequest = json
        .map((dynamic e) => NewsRequest.fromJson(e as Map<String, dynamic>))
        .toList();

    print(newsRequest);
    return newsRequest;
  }

  Future<dynamic> helperGet(String httpRequest) async {
    final url = Uri.parse(httpRequest);
    final request = await _client.getUrl(url);
    final response = await request.close();

    final jsonStrings = await response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();
    final dynamic json = jsonDecode(jsonString);
    print(json);

    return json;
  }

  // Future<NewsRequest?> createNews(
  //     {required String title, required String body}) async {
  //   final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  //   final parameters = <String, dynamic>{
  //     'title': title,
  //     'body': body,
  //     'userId': 109,
  //   // id: 'id',
  //   // symbol: 'asd',
  //   // name: 'asd',
  //   // exchange: 'asd',
  //   // mic: 'asd',
  //   // quantityPrecision: 100,
  //   // currency: 'asd',
  //   // isInternal: true,
  //   // issueType: 'asd',
  //   // assetClass: 'asd',
  //   // logo: 'asd',
  //   // tags: ['qwe', 'qwe'],
  //   // sortOrder: 200,
  //   // lastModified: 'asd',
  //   // summary: {'10': 'zxc', '11': 'zxc', '12': 'zxc'});
  //   };
  //
  //   final request = await _client.postUrl(url);
  //   request.headers.set('Content-type', 'application/json; charset=UTF-8');
  //   request.write(jsonEncode(parameters));
  //   final response = await request.close();
  //   final jsonStrings = await response.transform(utf8.decoder).toList();
  //   final jsonString = jsonStrings.join();
  //   final json = jsonEncode(jsonString) as Map<String, dynamic>;
  //   final post = NewsRequest.fromJson(json);
  //   return post;
  // }
}

