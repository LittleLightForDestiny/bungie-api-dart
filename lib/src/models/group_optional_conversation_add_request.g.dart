// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_optional_conversation_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupOptionalConversationAddRequest
_$GroupOptionalConversationAddRequestFromJson(Map<String, dynamic> json) =>
    GroupOptionalConversationAddRequest()
      ..chatName = json['chatName'] as String?
      ..chatSecurity = decodeChatSecuritySetting(json['chatSecurity']);

Map<String, dynamic> _$GroupOptionalConversationAddRequestToJson(
  GroupOptionalConversationAddRequest instance,
) => <String, dynamic>{
  'chatName': instance.chatName,
  'chatSecurity': encodeChatSecuritySetting(instance.chatSecurity),
};
