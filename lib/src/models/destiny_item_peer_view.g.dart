// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_peer_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPeerView _$DestinyItemPeerViewFromJson(Map<String, dynamic> json) =>
    DestinyItemPeerView()
      ..itemHash = (json['itemHash'] as num?)?.toInt()
      ..dyes =
          (json['dyes'] as List<dynamic>?)
              ?.map((e) => DyeReference.fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$DestinyItemPeerViewToJson(
  DestinyItemPeerView instance,
) => <String, dynamic>{
  'itemHash': instance.itemHash,
  'dyes': instance.dyes?.map((e) => e.toJson()).toList(),
};
