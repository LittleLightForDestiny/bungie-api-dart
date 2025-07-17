// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_objective_display_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyObjectiveDisplayProperties _$DestinyObjectiveDisplayPropertiesFromJson(
        Map<String, dynamic> json) =>
    DestinyObjectiveDisplayProperties()
      ..activityHash = (json['activityHash'] as num?)?.toInt()
      ..displayOnItemPreviewScreen =
          json['displayOnItemPreviewScreen'] as bool?;

Map<String, dynamic> _$DestinyObjectiveDisplayPropertiesToJson(
        DestinyObjectiveDisplayProperties instance) =>
    <String, dynamic>{
      'activityHash': instance.activityHash,
      'displayOnItemPreviewScreen': instance.displayOnItemPreviewScreen,
    };
