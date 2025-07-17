// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_entity_search_result_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEntitySearchResultItem _$DestinyEntitySearchResultItemFromJson(
  Map<String, dynamic> json,
) =>
    DestinyEntitySearchResultItem()
      ..hash = (json['hash'] as num?)?.toInt()
      ..entityType = json['entityType'] as String?
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..weight = (json['weight'] as num?)?.toDouble();

Map<String, dynamic> _$DestinyEntitySearchResultItemToJson(
  DestinyEntitySearchResultItem instance,
) => <String, dynamic>{
  'hash': instance.hash,
  'entityType': instance.entityType,
  'displayProperties': instance.displayProperties?.toJson(),
  'weight': instance.weight,
};
