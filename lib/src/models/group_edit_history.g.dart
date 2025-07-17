// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_edit_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupEditHistory _$GroupEditHistoryFromJson(Map<String, dynamic> json) =>
    GroupEditHistory()
      ..groupId = json['groupId'] as String?
      ..name = json['name'] as String?
      ..nameEditors = json['nameEditors'] as String?
      ..about = json['about'] as String?
      ..aboutEditors = json['aboutEditors'] as String?
      ..motto = json['motto'] as String?
      ..mottoEditors = json['mottoEditors'] as String?
      ..clanCallsign = json['clanCallsign'] as String?
      ..clanCallsignEditors = json['clanCallsignEditors'] as String?
      ..editDate = json['editDate'] as String?
      ..groupEditors =
          (json['groupEditors'] as List<dynamic>?)
              ?.map((e) => UserInfoCard.fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GroupEditHistoryToJson(GroupEditHistory instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'name': instance.name,
      'nameEditors': instance.nameEditors,
      'about': instance.about,
      'aboutEditors': instance.aboutEditors,
      'motto': instance.motto,
      'mottoEditors': instance.mottoEditors,
      'clanCallsign': instance.clanCallsign,
      'clanCallsignEditors': instance.clanCallsignEditors,
      'editDate': instance.editDate,
      'groupEditors': instance.groupEditors?.map((e) => e.toJson()).toList(),
    };
