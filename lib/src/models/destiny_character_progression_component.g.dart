// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_character_progression_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCharacterProgressionComponent
_$DestinyCharacterProgressionComponentFromJson(Map<String, dynamic> json) =>
    DestinyCharacterProgressionComponent()
      ..progressions = (json['progressions'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, DestinyProgression.fromJson(e as Map<String, dynamic>)),
      )
      ..factions = (json['factions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DestinyFactionProgression.fromJson(e as Map<String, dynamic>),
        ),
      )
      ..milestones = (json['milestones'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, DestinyMilestone.fromJson(e as Map<String, dynamic>)),
      )
      ..quests =
          (json['quests'] as List<dynamic>?)
              ?.map(
                (e) => DestinyQuestStatus.fromJson(e as Map<String, dynamic>),
              )
              .toList()
      ..uninstancedItemObjectives =
          (json['uninstancedItemObjectives'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
              k,
              (e as List<dynamic>)
                  .map(
                    (e) => DestinyObjectiveProgress.fromJson(
                      e as Map<String, dynamic>,
                    ),
                  )
                  .toList(),
            ),
          )
      ..uninstancedItemPerks =
          (json['uninstancedItemPerks'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
              k,
              DestinyItemPerksComponent.fromJson(e as Map<String, dynamic>),
            ),
          )
      ..checklists = (json['checklists'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Map<String, bool>.from(e as Map)),
      )
      ..seasonalArtifact =
          json['seasonalArtifact'] == null
              ? null
              : DestinyArtifactCharacterScoped.fromJson(
                json['seasonalArtifact'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyCharacterProgressionComponentToJson(
  DestinyCharacterProgressionComponent instance,
) => <String, dynamic>{
  'progressions': instance.progressions?.map((k, e) => MapEntry(k, e.toJson())),
  'factions': instance.factions?.map((k, e) => MapEntry(k, e.toJson())),
  'milestones': instance.milestones?.map((k, e) => MapEntry(k, e.toJson())),
  'quests': instance.quests?.map((e) => e.toJson()).toList(),
  'uninstancedItemObjectives': instance.uninstancedItemObjectives?.map(
    (k, e) => MapEntry(k, e.map((e) => e.toJson()).toList()),
  ),
  'uninstancedItemPerks': instance.uninstancedItemPerks?.map(
    (k, e) => MapEntry(k, e.toJson()),
  ),
  'checklists': instance.checklists,
  'seasonalArtifact': instance.seasonalArtifact?.toJson(),
};
