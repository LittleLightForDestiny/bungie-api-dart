// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_peer_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPeerView _$DestinyItemPeerViewFromJson(Map<String, dynamic> json) {
  return DestinyItemPeerView()
    ..itemHash = json['itemHash'] as int
    ..dyes = (json['dyes'] as List)
        ?.map((e) =>
            e == null ? null : DyeReference.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyItemPeerViewToJson(
        DestinyItemPeerView instance) =>
    <String, dynamic>{'itemHash': instance.itemHash, 'dyes': instance.dyes};
