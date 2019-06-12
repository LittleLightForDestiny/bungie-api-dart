// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_kiosks_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyKiosksComponent _$DestinyKiosksComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyKiosksComponent()
    ..kioskItems = (json['kioskItems'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          (e as List)
              ?.map((e) => e == null
                  ? null
                  : DestinyKioskItem.fromJson(e as Map<String, dynamic>))
              ?.toList()),
    );
}

Map<String, dynamic> _$DestinyKiosksComponentToJson(
        DestinyKiosksComponent instance) =>
    <String, dynamic>{'kioskItems': instance.kioskItems};
