// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_collectible_acquisition_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCollectibleAcquisitionBlock _$DestinyCollectibleAcquisitionBlockFromJson(
        Map<String, dynamic> json) =>
    DestinyCollectibleAcquisitionBlock()
      ..acquireMaterialRequirementHash =
          (json['acquireMaterialRequirementHash'] as num?)?.toInt()
      ..acquireTimestampUnlockValueHash =
          (json['acquireTimestampUnlockValueHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyCollectibleAcquisitionBlockToJson(
        DestinyCollectibleAcquisitionBlock instance) =>
    <String, dynamic>{
      'acquireMaterialRequirementHash': instance.acquireMaterialRequirementHash,
      'acquireTimestampUnlockValueHash':
          instance.acquireTimestampUnlockValueHash,
    };
