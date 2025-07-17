// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_node_socket_replace_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyNodeSocketReplaceResponse _$DestinyNodeSocketReplaceResponseFromJson(
        Map<String, dynamic> json) =>
    DestinyNodeSocketReplaceResponse()
      ..socketTypeHash = (json['socketTypeHash'] as num?)?.toInt()
      ..plugItemHash = (json['plugItemHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyNodeSocketReplaceResponseToJson(
        DestinyNodeSocketReplaceResponse instance) =>
    <String, dynamic>{
      'socketTypeHash': instance.socketTypeHash,
      'plugItemHash': instance.plugItemHash,
    };
