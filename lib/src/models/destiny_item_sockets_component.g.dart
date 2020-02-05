// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_sockets_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSocketsComponent _$DestinyItemSocketsComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyItemSocketsComponent()
    ..sockets = (json['sockets'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemSocketState.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyItemSocketsComponentToJson(
        DestinyItemSocketsComponent instance) =>
    <String, dynamic>{
      'sockets': instance.sockets,
    };
