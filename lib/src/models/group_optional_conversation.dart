import 'package:json_annotation/json_annotation.dart';

import '../enums/chat_security_setting.dart';

part 'group_optional_conversation.g.dart';

@JsonSerializable()
class GroupOptionalConversation{
	
	GroupOptionalConversation();

	factory GroupOptionalConversation.fromJson(Map<String, dynamic> json) => _$GroupOptionalConversationFromJson(json);

	@JsonKey(name:'groupId')
	String groupId;
	@JsonKey(name:'conversationId')
	String conversationId;
	@JsonKey(name:'chatEnabled')
	bool chatEnabled;
	@JsonKey(name:'chatName')
	String chatName;
	@JsonKey(name:'chatSecurity',unknownEnumValue:ChatSecuritySetting.Group)
	ChatSecuritySetting chatSecurity;

	
	
	Map<String, dynamic> toJson() => _$GroupOptionalConversationToJson(this);
}