// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsRequest _$NewsRequestFromJson(Map<String, dynamic> json) => NewsRequest(
      id: json['id'] as String?,
      symbol: json['symbol'] as String?,
      name: json['name'] as String?,
      exchange: json['exchange'] as String?,
      mic: json['mic'] as String?,
      quantityPrecision: json['quantityPrecision'] as int?,
      currency: json['currency'] as String?,
      isInternal: json['isInternal'] as bool?,
      issueType: json['issueType'] as String?,
      assetClass: json['assetClass'] as String?,
      logo: json['logo'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sortOrder: json['sortOrder'] as int?,
      lastModified:
          parseNewsLastModifiedFromString(json['lastModified'] as String?),
      summary: json['summary'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$NewsRequestToJson(NewsRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'exchange': instance.exchange,
      'mic': instance.mic,
      'quantityPrecision': instance.quantityPrecision,
      'currency': instance.currency,
      'isInternal': instance.isInternal,
      'issueType': instance.issueType,
      'assetClass': instance.assetClass,
      'logo': instance.logo,
      'tags': instance.tags,
      'sortOrder': instance.sortOrder,
      'lastModified': instance.lastModified?.toIso8601String(),
      'summary': instance.summary,
    };
