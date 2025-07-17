// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_application_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupApplicationResponse _$GroupApplicationResponseFromJson(
  Map<String, dynamic> json,
) =>
    GroupApplicationResponse()
      ..resolution = decodeGroupApplicationResolveState(json['resolution']);

Map<String, dynamic> _$GroupApplicationResponseToJson(
  GroupApplicationResponse instance,
) => <String, dynamic>{
  'resolution': encodeGroupApplicationResolveState(instance.resolution),
};
