// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_collectible_node_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCollectibleNodeDetailResponse
_$DestinyCollectibleNodeDetailResponseFromJson(Map<String, dynamic> json) =>
    DestinyCollectibleNodeDetailResponse()
      ..collectibles =
          json['collectibles'] == null
              ? null
              : SingleComponentResponseOfDestinyCollectiblesComponent.fromJson(
                json['collectibles'] as Map<String, dynamic>,
              )
      ..collectibleItemComponents =
          json['collectibleItemComponents'] == null
              ? null
              : DestinyItemComponentSetOfuint32.fromJson(
                json['collectibleItemComponents'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyCollectibleNodeDetailResponseToJson(
  DestinyCollectibleNodeDetailResponse instance,
) => <String, dynamic>{
  'collectibles': instance.collectibles?.toJson(),
  'collectibleItemComponents': instance.collectibleItemComponents?.toJson(),
};
