import 'dart:convert';
import 'dart:io';

import '../entity/last_modified_news_request.dart';
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

    // final dateTime = json
    //     .map((dynamic e) => LastModified.fromJson(lastModified)
    //    ;

    print(newsRequest.first);
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

  Future<List<LastModifiedNewsRequest>> getLastModified() async {
    final json = await helperGetLM('https://lightyear.ee/api/v1/instrument')
    as List<dynamic>;

    final lastModified = json
        .map((dynamic e) =>
        LastModifiedNewsRequest.fromJson(e as Map<String, dynamic>))
        .toList();

    print(lastModified.first);
    return lastModified;
  }

  Future<dynamic> helperGetLM(String httpRequest) async {
    final url = Uri.parse(httpRequest);
    final request = await _client.getUrl(url);
    final response = await request.close();

    final jsonStrings = await response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();
    final dynamic json = jsonDecode(jsonString);
    print(json);

    return json;
  }



}
