// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_talent_exclusive_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyTalentExclusiveGroup _$DestinyTalentExclusiveGroupFromJson(
        Map<String, dynamic> json) =>
    DestinyTalentExclusiveGroup()
      ..groupHash = json['groupHash'] as int?
      ..loreHash = json['loreHash'] as int?
      ..nodeHashes =
          (json['nodeHashes'] as List<dynamic>?)?.map((e) => e as int).toList()
      ..opposingGroupHashes = (json['opposingGroupHashes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..opposingNodeHashes = (json['opposingNodeHashes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList();

Map<String, dynamic> _$DestinyTalentExclusiveGroupToJson(
        DestinyTalentExclusiveGroup instance) =>
    <String, dynamic>{
      'groupHash': instance.groupHash,
      'loreHash': instance.loreHash,
      'nodeHashes': instance.nodeHashes,
      'opposingGroupHashes': instance.opposingGroupHashes,
      'opposingNodeHashes': instance.opposingNodeHashes,
    };
