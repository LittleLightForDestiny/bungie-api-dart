// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_selectable_skull.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivitySelectableSkull _$DestinyActivitySelectableSkullFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActivitySelectableSkull()
      ..requiredTraitHash = (json['requiredTraitHash'] as num?)?.toInt()
      ..requiredTraitExistence = json['requiredTraitExistence'] as bool?
      ..isEmptySkull = json['isEmptySkull'] as bool?
      ..loadoutRestrictionHash =
          (json['loadoutRestrictionHash'] as num?)?.toInt()
      ..activitySkull =
          json['activitySkull'] == null
              ? null
              : DestinyActivitySkull.fromJson(
                json['activitySkull'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyActivitySelectableSkullToJson(
  DestinyActivitySelectableSkull instance,
) => <String, dynamic>{
  'requiredTraitHash': instance.requiredTraitHash,
  'requiredTraitExistence': instance.requiredTraitExistence,
  'isEmptySkull': instance.isEmptySkull,
  'loadoutRestrictionHash': instance.loadoutRestrictionHash,
  'activitySkull': instance.activitySkull?.toJson(),
};
