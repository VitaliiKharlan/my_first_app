import 'dart:io';
import 'dart:convert';

import '../entity/test_request.dart';

class ApiClient {
  final client = HttpClient();

  Future<List<TestRequest>> getPosts() async {
    final json = await helperGet('https://lightyear.ee/api/v1/instrument')
    as List<dynamic>;

    final testRequest = json
        .map((dynamic e) => TestRequest.fromJson(e as Map<String, dynamic>))
        .toList();

    print(testRequest);
    return testRequest;
  }


  Future<dynamic> helperGet(String httpRequest) async {
    final url = Uri.parse(httpRequest);
    final request = await client.getUrl(url);
    final response = await request.close();
    final jsonStrings = await response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();
    final dynamic json = jsonDecode(jsonString);

    return json;
  }
}