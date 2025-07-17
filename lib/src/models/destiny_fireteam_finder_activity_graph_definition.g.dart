// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_activity_graph_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderActivityGraphDefinition
_$DestinyFireteamFinderActivityGraphDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderActivityGraphDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..color =
          json['color'] == null
              ? null
              : DestinyColor.fromJson(json['color'] as Map<String, dynamic>)
      ..isPlayerElectedDifficultyNode =
          json['isPlayerElectedDifficultyNode'] as bool?
      ..parentHash = (json['parentHash'] as num?)?.toInt()
      ..children =
          (json['children'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..selfAndAllDescendantHashes =
          (json['selfAndAllDescendantHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..relatedActivitySetHashes =
          (json['relatedActivitySetHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..specificActivitySetHash =
          (json['specificActivitySetHash'] as num?)?.toInt()
      ..relatedActivityHashes =
          (json['relatedActivityHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..relatedDirectorNodes =
          (json['relatedDirectorNodes'] as List<dynamic>?)
              ?.map(
                (e) => DestinyActivityGraphReference.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..relatedInteractableActivities =
          (json['relatedInteractableActivities'] as List<dynamic>?)
              ?.map(
                (e) => DestinyActivityInteractableReference.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..relatedLocationHashes =
          (json['relatedLocationHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..sortMatchmadeActivitiesToFront =
          json['sortMatchmadeActivitiesToFront'] as bool?
      ..enabledOnTreeTypesListEnum =
          (json['enabledOnTreeTypesListEnum'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$DestinyActivityTreeTypeEnumMap, e))
              .toList()
      ..activityTreeChildSortMode = decodeDestinyActivityTreeChildSortMode(
        json['activityTreeChildSortMode'],
      )
      ..sortPriority = (json['sortPriority'] as num?)?.toInt()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyFireteamFinderActivityGraphDefinitionToJson(
  DestinyFireteamFinderActivityGraphDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'color': instance.color?.toJson(),
  'isPlayerElectedDifficultyNode': instance.isPlayerElectedDifficultyNode,
  'parentHash': instance.parentHash,
  'children': instance.children,
  'selfAndAllDescendantHashes': instance.selfAndAllDescendantHashes,
  'relatedActivitySetHashes': instance.relatedActivitySetHashes,
  'specificActivitySetHash': instance.specificActivitySetHash,
  'relatedActivityHashes': instance.relatedActivityHashes,
  'relatedDirectorNodes':
      instance.relatedDirectorNodes?.map((e) => e.toJson()).toList(),
  'relatedInteractableActivities':
      instance.relatedInteractableActivities?.map((e) => e.toJson()).toList(),
  'relatedLocationHashes': instance.relatedLocationHashes,
  'sortMatchmadeActivitiesToFront': instance.sortMatchmadeActivitiesToFront,
  'enabledOnTreeTypesListEnum':
      instance.enabledOnTreeTypesListEnum
          ?.map((e) => _$DestinyActivityTreeTypeEnumMap[e]!)
          .toList(),
  'activityTreeChildSortMode': encodeDestinyActivityTreeChildSortMode(
    instance.activityTreeChildSortMode,
  ),
  'sortPriority': instance.sortPriority,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};

const _$DestinyActivityTreeTypeEnumMap = {
  DestinyActivityTreeType.FireteamFinder: 0,
  DestinyActivityTreeType.Curator: 1,
  DestinyActivityTreeType.EventHome: 2,
  DestinyActivityTreeType.SeasonHome: 3,
  DestinyActivityTreeType.Count: 4,
  DestinyActivityTreeType.ProtectedInvalidEnumValue: 999999999,
};
