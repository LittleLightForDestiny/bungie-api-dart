// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_optional_conversation_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupOptionalConversationAddRequest
    _$GroupOptionalConversationAddRequestFromJson(Map<String, dynamic> json) {
  return GroupOptionalConversationAddRequest()
    ..chatName = json['chatName'] as String
    ..chatSecurity = json['chatSecurity'] as int;
}

Map<String, dynamic> _$GroupOptionalConversationAddRequestToJson(
        GroupOptionalConversationAddRequest instance) =>
    <String, dynamic>{
      'chatName': instance.chatName,
      'chatSecurity': instance.chatSecurity
    };
