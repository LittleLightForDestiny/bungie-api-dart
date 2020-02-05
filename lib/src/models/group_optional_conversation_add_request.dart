import 'package:json_annotation/json_annotation.dart';

import '../enums/chat_security_setting.dart';

part 'group_optional_conversation_add_request.g.dart';

@JsonSerializable()
class GroupOptionalConversationAddRequest{
	
	GroupOptionalConversationAddRequest();

	factory GroupOptionalConversationAddRequest.fromJson(Map<String, dynamic> json) => _$GroupOptionalConversationAddRequestFromJson(json);

	@JsonKey(name:'chatName')
	String chatName;
	@JsonKey(name:'chatSecurity',unknownEnumValue:ChatSecuritySetting.Group)
	ChatSecuritySetting chatSecurity;

	
	
	Map<String, dynamic> toJson() => _$GroupOptionalConversationAddRequestToJson(this);
}