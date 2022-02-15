// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_record_expiration_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordExpirationBlock _$DestinyRecordExpirationBlockFromJson(
        Map<String, dynamic> json) =>
    DestinyRecordExpirationBlock()
      ..hasExpiration = json['hasExpiration'] as bool?
      ..description = json['description'] as String?
      ..icon = json['icon'] as String?;

Map<String, dynamic> _$DestinyRecordExpirationBlockToJson(
        DestinyRecordExpirationBlock instance) =>
    <String, dynamic>{
      'hasExpiration': instance.hasExpiration,
      'description': instance.description,
      'icon': instance.icon,
    };
