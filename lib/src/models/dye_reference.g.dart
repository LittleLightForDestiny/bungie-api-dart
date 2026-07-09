// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dye_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DyeReference _$DyeReferenceFromJson(Map<String, dynamic> json) => DyeReference()
  ..channelHash = (json['channelHash'] as num?)?.toInt()
  ..dyeHash = (json['dyeHash'] as num?)?.toInt();

Map<String, dynamic> _$DyeReferenceToJson(DyeReference instance) =>
    <String, dynamic>{
      'channelHash': instance.channelHash,
      'dyeHash': instance.dyeHash,
    };
