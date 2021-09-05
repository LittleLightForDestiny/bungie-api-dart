// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_parent_item_override.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyParentItemOverride _$DestinyParentItemOverrideFromJson(
    Map<String, dynamic> json) {
  return DestinyParentItemOverride()
    ..additionalEquipRequirementsDisplayStrings =
        (json['additionalEquipRequirementsDisplayStrings'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList()
    ..pipIcon = json['pipIcon'] as String?;
}

Map<String, dynamic> _$DestinyParentItemOverrideToJson(
        DestinyParentItemOverride instance) =>
    <String, dynamic>{
      'additionalEquipRequirementsDisplayStrings':
          instance.additionalEquipRequirementsDisplayStrings,
      'pipIcon': instance.pipIcon,
    };
