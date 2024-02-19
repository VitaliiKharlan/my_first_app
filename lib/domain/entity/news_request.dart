import 'package:json_annotation/json_annotation.dart';

part 'news_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class NewsRequest {
  final String? id;
  final String? symbol;
  final String? name;
  final String? exchange;
  final String? mic;
  final int? quantityPrecision;
  final String? currency;
  final bool? isInternal;
  final String? issueType;
  final String? assetClass;
  final String? logo;
  final List<String>? tags;
  final int? sortOrder;
  final String? lastModified;
  final Map<String, dynamic>? summary;

  NewsRequest({
    required this.id,
    required this.symbol,
    required this.name,
    required this.exchange,
    required this.mic,
    required this.quantityPrecision,
    required this.currency,
    required this.isInternal,
    required this.issueType,
    required this.assetClass,
    required this.logo,
    required this.tags,
    required this.sortOrder,
    required this.lastModified,
    required this.summary,
  });

  factory NewsRequest.fromJson(Map<String, dynamic> json) =>
      _$NewsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NewsRequestToJson(this);

  // static DateTime? _parseDateFromString(String? rawDate) {
  //   if (rawDate == null || rawDate.isEmpty) return null;
  //   return DateTime.tryParse(rawDate);
  // }

}



/*

"id":"1ee47f28-d343-6cbb-8181-a3fcb7af5b63",
"symbol":"ICSUSSDP",
"name":"BlackRock ICS US Dollar Liquidity Fund (Premier)",
"exchange":"ISE",
"mic":"BLKMMFUSD_PREMIER",
"quantityPrecision":9,
"currency":"USD",
"isInternal":true,
"issueType":"MUTUAL_FUND",
"assetClass":"money_market",
"logo":"https://lightyear.com/asset/instrument/logos/blackrock.png",
"tags":["mmf"],
"sortOrder":999999,
"lastModified":"2024-01-11T14:45:13.919952Z",
"summary":{"distributionPolicy":"Dist","shortDescription":"USD Money Market Fund"}

"id":"54e1ae9c-97ed-483a-bf69-ef57e014b202",
"symbol":"AAPL",
"name":"Apple",
"exchange":"NASDAQ",
"mic":"XNAS",
"quantityPrecision":0,
"currency":"USD",
"isInternal":false,
"issueType":"COMMON_STOCK",
"assetClass":"us_equity",
"logo":"https://lightyear.com/asset/instrument/1ebd2c86-4ee4-614e-a6ac-f7176e74a812/logo.png",
"tags":[],
"sortOrder":999999,
"lastModified":"2024-02-15T14:35:49.108232Z",
"summary":{"sector":"Phones & Smart Phones"}

*/
