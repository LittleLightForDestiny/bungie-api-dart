// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_collectible_state_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCollectibleStateBlock _$DestinyCollectibleStateBlockFromJson(
        Map<String, dynamic> json) =>
    DestinyCollectibleStateBlock()
      ..obscuredOverrideItemHash = json['obscuredOverrideItemHash'] as int?
      ..requirements = json['requirements'] == null
          ? null
          : DestinyPresentationNodeRequirementsBlock.fromJson(
              json['requirements'] as Map<String, dynamic>);

Map<String, dynamic> _$DestinyCollectibleStateBlockToJson(
        DestinyCollectibleStateBlock instance) =>
    <String, dynamic>{
      'obscuredOverrideItemHash': instance.obscuredOverrideItemHash,
      'requirements': instance.requirements?.toJson(),
    };
