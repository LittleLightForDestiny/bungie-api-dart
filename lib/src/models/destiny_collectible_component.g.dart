// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_collectible_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCollectibleComponent _$DestinyCollectibleComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyCollectibleComponent()
      ..state = json['state'] == null
          ? null
          : DestinyCollectibleState.fromJson(json['state'] as int);

Map<String, dynamic> _$DestinyCollectibleComponentToJson(
        DestinyCollectibleComponent instance) =>
    <String, dynamic>{
      'state': instance.state?.toJson(),
    };
