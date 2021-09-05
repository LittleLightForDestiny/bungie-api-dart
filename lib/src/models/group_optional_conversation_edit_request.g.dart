// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_optional_conversation_edit_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupOptionalConversationEditRequest
    _$GroupOptionalConversationEditRequestFromJson(Map<String, dynamic> json) {
  return GroupOptionalConversationEditRequest()
    ..chatEnabled = json['chatEnabled'] as bool?
    ..chatName = json['chatName'] as String?
    ..chatSecurity = json['chatSecurity'] as int?;
}

Map<String, dynamic> _$GroupOptionalConversationEditRequestToJson(
        GroupOptionalConversationEditRequest instance) =>
    <String, dynamic>{
      'chatEnabled': instance.chatEnabled,
      'chatName': instance.chatName,
      'chatSecurity': instance.chatSecurity,
    };
