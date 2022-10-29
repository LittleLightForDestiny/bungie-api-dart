import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/chat_security_setting.dart';

part 'group_optional_conversation.g.dart';

@JsonSerializable()
class GroupOptionalConversation{	
	GroupOptionalConversation();

	
	@JsonKey(name:'groupId')
	String? groupId;
	
	@JsonKey(name:'conversationId')
	String? conversationId;
	
	@JsonKey(name:'chatEnabled')
	bool? chatEnabled;
	
	@JsonKey(name:'chatName')
	String? chatName;
	
	@JsonKey(name:'chatSecurity',fromJson:decodeChatSecuritySetting,toJson:encodeChatSecuritySetting)
	ChatSecuritySetting? chatSecurity;

	factory GroupOptionalConversation.fromJson(Map<String, dynamic> json) {
		return _$GroupOptionalConversationFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupOptionalConversationToJson(this);

	static Future<GroupOptionalConversation> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupOptionalConversation>((json)=>GroupOptionalConversation.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}