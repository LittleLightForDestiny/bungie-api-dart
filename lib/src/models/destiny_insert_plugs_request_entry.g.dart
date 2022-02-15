// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_insert_plugs_request_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInsertPlugsRequestEntry _$DestinyInsertPlugsRequestEntryFromJson(
        Map<String, dynamic> json) =>
    DestinyInsertPlugsRequestEntry()
      ..socketIndex = json['socketIndex'] as int?
      ..socketArrayType = decodeDestinySocketArrayType(json['socketArrayType'])
      ..plugItemHash = json['plugItemHash'] as int?;

Map<String, dynamic> _$DestinyInsertPlugsRequestEntryToJson(
        DestinyInsertPlugsRequestEntry instance) =>
    <String, dynamic>{
      'socketIndex': instance.socketIndex,
      'socketArrayType': encodeDestinySocketArrayType(instance.socketArrayType),
      'plugItemHash': instance.plugItemHash,
    };
