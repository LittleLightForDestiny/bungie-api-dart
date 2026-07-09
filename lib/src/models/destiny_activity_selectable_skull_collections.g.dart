// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_selectable_skull_collections.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivitySelectableSkullCollections
_$DestinyActivitySelectableSkullCollectionsFromJson(
  Map<String, dynamic> json,
) => DestinyActivitySelectableSkullCollections()
  ..selectableSkullCollectionHash =
      (json['selectableSkullCollectionHash'] as num?)?.toInt()
  ..minimumTierRank = (json['minimumTierRank'] as num?)?.toInt()
  ..maximumTierRank = (json['maximumTierRank'] as num?)?.toInt();

Map<String, dynamic> _$DestinyActivitySelectableSkullCollectionsToJson(
  DestinyActivitySelectableSkullCollections instance,
) => <String, dynamic>{
  'selectableSkullCollectionHash': instance.selectableSkullCollectionHash,
  'minimumTierRank': instance.minimumTierRank,
  'maximumTierRank': instance.maximumTierRank,
};
