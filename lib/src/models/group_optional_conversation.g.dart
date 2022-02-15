// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_optional_conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupOptionalConversation _$GroupOptionalConversationFromJson(
        Map<String, dynamic> json) =>
    GroupOptionalConversation()
      ..groupId = json['groupId'] as String?
      ..conversationId = json['conversationId'] as String?
      ..chatEnabled = json['chatEnabled'] as bool?
      ..chatName = json['chatName'] as String?
      ..chatSecurity = decodeChatSecuritySetting(json['chatSecurity']);

Map<String, dynamic> _$GroupOptionalConversationToJson(
        GroupOptionalConversation instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'conversationId': instance.conversationId,
      'chatEnabled': instance.chatEnabled,
      'chatName': instance.chatName,
      'chatSecurity': encodeChatSecuritySetting(instance.chatSecurity),
    };
