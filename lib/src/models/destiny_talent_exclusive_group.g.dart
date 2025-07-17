// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_talent_exclusive_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyTalentExclusiveGroup _$DestinyTalentExclusiveGroupFromJson(
  Map<String, dynamic> json,
) =>
    DestinyTalentExclusiveGroup()
      ..groupHash = (json['groupHash'] as num?)?.toInt()
      ..loreHash = (json['loreHash'] as num?)?.toInt()
      ..nodeHashes =
          (json['nodeHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..opposingGroupHashes =
          (json['opposingGroupHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..opposingNodeHashes =
          (json['opposingNodeHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList();

Map<String, dynamic> _$DestinyTalentExclusiveGroupToJson(
  DestinyTalentExclusiveGroup instance,
) => <String, dynamic>{
  'groupHash': instance.groupHash,
  'loreHash': instance.loreHash,
  'nodeHashes': instance.nodeHashes,
  'opposingGroupHashes': instance.opposingGroupHashes,
  'opposingNodeHashes': instance.opposingNodeHashes,
};
