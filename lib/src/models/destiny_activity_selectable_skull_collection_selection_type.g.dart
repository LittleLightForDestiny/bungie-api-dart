// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_selectable_skull_collection_selection_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivitySelectableSkullCollectionSelectionType
_$DestinyActivitySelectableSkullCollectionSelectionTypeFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActivitySelectableSkullCollectionSelectionType()
      ..selectionCount = (json['selectionCount'] as num?)?.toInt()
      ..refreshTimeMinutes = (json['refreshTimeMinutes'] as num?)?.toInt()
      ..refreshTimeOffsetMinutes =
          (json['refreshTimeOffsetMinutes'] as num?)?.toInt();

Map<String, dynamic>
_$DestinyActivitySelectableSkullCollectionSelectionTypeToJson(
  DestinyActivitySelectableSkullCollectionSelectionType instance,
) => <String, dynamic>{
  'selectionCount': instance.selectionCount,
  'refreshTimeMinutes': instance.refreshTimeMinutes,
  'refreshTimeOffsetMinutes': instance.refreshTimeOffsetMinutes,
};
