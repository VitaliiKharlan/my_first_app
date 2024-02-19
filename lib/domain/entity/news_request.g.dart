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
      quantityPrecision: json['quantity_precision'] as int?,
      currency: json['currency'] as String?,
      isInternal: json['is_internal'] as bool?,
      issueType: json['issue_type'] as String?,
      assetClass: json['asset_class'] as String?,
      logo: json['logo'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sortOrder: json['sort_order'] as int?,
      lastModified: json['last_modified'] as String?,
      summary: json['summary'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$NewsRequestToJson(NewsRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'exchange': instance.exchange,
      'mic': instance.mic,
      'quantity_precision': instance.quantityPrecision,
      'currency': instance.currency,
      'is_internal': instance.isInternal,
      'issue_type': instance.issueType,
      'asset_class': instance.assetClass,
      'logo': instance.logo,
      'tags': instance.tags,
      'sort_order': instance.sortOrder,
      'last_modified': instance.lastModified,
      'summary': instance.summary,
    };
