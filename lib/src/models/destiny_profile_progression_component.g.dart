// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_progression_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileProgressionComponent _$DestinyProfileProgressionComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyProfileProgressionComponent()
      ..checklists = (json['checklists'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Map<String, bool>.from(e as Map)),
      )
      ..seasonalArtifact =
          json['seasonalArtifact'] == null
              ? null
              : DestinyArtifactProfileScoped.fromJson(
                json['seasonalArtifact'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyProfileProgressionComponentToJson(
  DestinyProfileProgressionComponent instance,
) => <String, dynamic>{
  'checklists': instance.checklists,
  'seasonalArtifact': instance.seasonalArtifact?.toJson(),
};
