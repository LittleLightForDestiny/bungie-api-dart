// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_sockets_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSocketsComponent _$DestinyItemSocketsComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyItemSocketsComponent()
      ..sockets = (json['sockets'] as List<dynamic>?)
          ?.map(
              (e) => DestinyItemSocketState.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyItemSocketsComponentToJson(
        DestinyItemSocketsComponent instance) =>
    <String, dynamic>{
      'sockets': instance.sockets?.map((e) => e.toJson()).toList(),
    };
