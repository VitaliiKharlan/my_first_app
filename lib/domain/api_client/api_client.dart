import 'dart:convert';
import 'dart:io';

import '../entity/news_request.dart';

class ApiClient {
  final _client = HttpClient();

  static const _imageUrl = '';
  static String imageUrl = _imageUrl;

  Future<List<NewsRequest>> getNews() async {
    final json = await helperGet('https://lightyear.ee/api/v1/instrument')
        as List<dynamic>;

    final newsRequest = json
        .map((dynamic e) => NewsRequest.fromJson(e as Map<String, dynamic>))
        .toList();

    return newsRequest;
  }

  Future<dynamic> helperGet(String httpRequest) async {
    final url = Uri.parse(httpRequest);
    final request = await _client.getUrl(url);
    final response = await request.close();

    final jsonStrings = await response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();
    final dynamic json = jsonDecode(jsonString);

    return json;
  }
}
