// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_craftable_socket_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCraftableSocketComponent _$DestinyCraftableSocketComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyCraftableSocketComponent()
      ..plugSetHash = (json['plugSetHash'] as num?)?.toInt()
      ..plugs =
          (json['plugs'] as List<dynamic>?)
              ?.map(
                (e) => DestinyCraftableSocketPlugComponent.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$DestinyCraftableSocketComponentToJson(
  DestinyCraftableSocketComponent instance,
) => <String, dynamic>{
  'plugSetHash': instance.plugSetHash,
  'plugs': instance.plugs?.map((e) => e.toJson()).toList(),
};
