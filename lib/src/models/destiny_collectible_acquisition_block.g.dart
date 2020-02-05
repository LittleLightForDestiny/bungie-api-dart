// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_collectible_acquisition_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCollectibleAcquisitionBlock _$DestinyCollectibleAcquisitionBlockFromJson(
    Map<String, dynamic> json) {
  return DestinyCollectibleAcquisitionBlock()
    ..acquireMaterialRequirementHash =
        json['acquireMaterialRequirementHash'] as int
    ..acquireTimestampUnlockValueHash =
        json['acquireTimestampUnlockValueHash'] as int;
}

Map<String, dynamic> _$DestinyCollectibleAcquisitionBlockToJson(
        DestinyCollectibleAcquisitionBlock instance) =>
    <String, dynamic>{
      'acquireMaterialRequirementHash': instance.acquireMaterialRequirementHash,
      'acquireTimestampUnlockValueHash':
          instance.acquireTimestampUnlockValueHash,
    };
