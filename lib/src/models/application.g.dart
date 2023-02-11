// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Application _$ApplicationFromJson(Map<String, dynamic> json) => Application()
  ..applicationId = json['applicationId'] as int?
  ..name = json['name'] as String?
  ..redirectUrl = json['redirectUrl'] as String?
  ..link = json['link'] as String?
  ..scope = json['scope'] as String?
  ..origin = json['origin'] as String?
  ..status = decodeApplicationStatus(json['status'])
  ..creationDate = json['creationDate'] as String?
  ..statusChanged = json['statusChanged'] as String?
  ..firstPublished = json['firstPublished'] as String?
  ..team = (json['team'] as List<dynamic>?)
      ?.map((e) => ApplicationDeveloper.fromJson(e as Map<String, dynamic>))
      .toList()
  ..overrideAuthorizeViewName = json['overrideAuthorizeViewName'] as String?;

Map<String, dynamic> _$ApplicationToJson(Application instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'name': instance.name,
      'redirectUrl': instance.redirectUrl,
      'link': instance.link,
      'scope': instance.scope,
      'origin': instance.origin,
      'status': encodeApplicationStatus(instance.status),
      'creationDate': instance.creationDate,
      'statusChanged': instance.statusChanged,
      'firstPublished': instance.firstPublished,
      'team': instance.team?.map((e) => e.toJson()).toList(),
      'overrideAuthorizeViewName': instance.overrideAuthorizeViewName,
    };
