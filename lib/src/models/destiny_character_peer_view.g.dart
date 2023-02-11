// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_character_peer_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCharacterPeerView _$DestinyCharacterPeerViewFromJson(
        Map<String, dynamic> json) =>
    DestinyCharacterPeerView()
      ..equipment = (json['equipment'] as List<dynamic>?)
          ?.map((e) => DestinyItemPeerView.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyCharacterPeerViewToJson(
        DestinyCharacterPeerView instance) =>
    <String, dynamic>{
      'equipment': instance.equipment?.map((e) => e.toJson()).toList(),
    };
