// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_kiosks_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyKiosksComponent _$DestinyKiosksComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyKiosksComponent()
      ..kioskItems = (json['kioskItems'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          (e as List<dynamic>)
              .map((e) => DestinyKioskItem.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );

Map<String, dynamic> _$DestinyKiosksComponentToJson(
  DestinyKiosksComponent instance,
) => <String, dynamic>{
  'kioskItems': instance.kioskItems?.map(
    (k, e) => MapEntry(k, e.map((e) => e.toJson()).toList()),
  ),
};
