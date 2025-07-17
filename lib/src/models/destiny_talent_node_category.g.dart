// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_talent_node_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyTalentNodeCategory _$DestinyTalentNodeCategoryFromJson(
  Map<String, dynamic> json,
) =>
    DestinyTalentNodeCategory()
      ..identifier = json['identifier'] as String?
      ..isLoreDriven = json['isLoreDriven'] as bool?
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..nodeHashes =
          (json['nodeHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList();

Map<String, dynamic> _$DestinyTalentNodeCategoryToJson(
  DestinyTalentNodeCategory instance,
) => <String, dynamic>{
  'identifier': instance.identifier,
  'isLoreDriven': instance.isLoreDriven,
  'displayProperties': instance.displayProperties?.toJson(),
  'nodeHashes': instance.nodeHashes,
};
