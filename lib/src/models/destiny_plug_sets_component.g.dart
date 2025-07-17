// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_plug_sets_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPlugSetsComponent _$DestinyPlugSetsComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyPlugSetsComponent()
      ..plugs = (json['plugs'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          (e as List<dynamic>)
              .map((e) => DestinyItemPlug.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );

Map<String, dynamic> _$DestinyPlugSetsComponentToJson(
  DestinyPlugSetsComponent instance,
) => <String, dynamic>{
  'plugs': instance.plugs?.map(
    (k, e) => MapEntry(k, e.map((e) => e.toJson()).toList()),
  ),
};
