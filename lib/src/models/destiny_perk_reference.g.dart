// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_perk_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPerkReference _$DestinyPerkReferenceFromJson(
  Map<String, dynamic> json,
) =>
    DestinyPerkReference()
      ..perkHash = (json['perkHash'] as num?)?.toInt()
      ..iconPath = json['iconPath'] as String?
      ..isActive = json['isActive'] as bool?
      ..visible = json['visible'] as bool?;

Map<String, dynamic> _$DestinyPerkReferenceToJson(
  DestinyPerkReference instance,
) => <String, dynamic>{
  'perkHash': instance.perkHash,
  'iconPath': instance.iconPath,
  'isActive': instance.isActive,
  'visible': instance.visible,
};
