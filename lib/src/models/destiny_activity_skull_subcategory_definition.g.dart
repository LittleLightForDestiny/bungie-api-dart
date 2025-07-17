// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_skull_subcategory_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivitySkullSubcategoryDefinition
_$DestinyActivitySkullSubcategoryDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActivitySkullSubcategoryDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..parentSkullCategoryHash =
          (json['parentSkullCategoryHash'] as num?)?.toInt()
      ..availabilityTierRank = (json['availabilityTierRank'] as num?)?.toInt()
      ..defaultSkullHashes =
          (json['defaultSkullHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyActivitySkullSubcategoryDefinitionToJson(
  DestinyActivitySkullSubcategoryDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'parentSkullCategoryHash': instance.parentSkullCategoryHash,
  'availabilityTierRank': instance.availabilityTierRank,
  'defaultSkullHashes': instance.defaultSkullHashes,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
