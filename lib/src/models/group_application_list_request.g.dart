// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_application_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupApplicationListRequest _$GroupApplicationListRequestFromJson(
    Map<String, dynamic> json) {
  return GroupApplicationListRequest()
    ..memberships = (json['memberships'] as List<dynamic>?)
        ?.map((e) => UserMembership.fromJson(e as Map<String, dynamic>))
        .toList()
    ..message = json['message'] as String?;
}

Map<String, dynamic> _$GroupApplicationListRequestToJson(
        GroupApplicationListRequest instance) =>
    <String, dynamic>{
      'memberships': instance.memberships,
      'message': instance.message,
    };
