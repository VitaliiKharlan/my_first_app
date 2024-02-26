// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_request.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewsRequestAdapter extends TypeAdapter<NewsRequest> {
  @override
  final int typeId = 2;

  @override
  NewsRequest read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewsRequest(
      id: fields[0] as String?,
      symbol: fields[1] as String?,
      name: fields[2] as String?,
      exchange: fields[3] as String?,
      mic: fields[4] as String?,
      quantityPrecision: fields[5] as int?,
      currency: fields[6] as String?,
      isInternal: fields[7] as bool?,
      issueType: fields[8] as String?,
      assetClass: fields[9] as String?,
      logo: fields[10] as String?,
      tags: (fields[11] as List?)?.cast<String>(),
      sortOrder: fields[12] as int?,
      lastModified: fields[13] as DateTime?,
      summary: (fields[14] as Map?)?.cast<String, dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, NewsRequest obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.symbol)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.exchange)
      ..writeByte(4)
      ..write(obj.mic)
      ..writeByte(5)
      ..write(obj.quantityPrecision)
      ..writeByte(6)
      ..write(obj.currency)
      ..writeByte(7)
      ..write(obj.isInternal)
      ..writeByte(8)
      ..write(obj.issueType)
      ..writeByte(9)
      ..write(obj.assetClass)
      ..writeByte(10)
      ..write(obj.logo)
      ..writeByte(11)
      ..write(obj.tags)
      ..writeByte(12)
      ..write(obj.sortOrder)
      ..writeByte(13)
      ..write(obj.lastModified)
      ..writeByte(14)
      ..write(obj.summary);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsRequestAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
