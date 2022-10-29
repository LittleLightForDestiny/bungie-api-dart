import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/chat_security_setting.dart';

part 'group_optional_conversation_add_request.g.dart';

@JsonSerializable()
class GroupOptionalConversationAddRequest{	
	GroupOptionalConversationAddRequest();

	
	@JsonKey(name:'chatName')
	String? chatName;
	
	@JsonKey(name:'chatSecurity',fromJson:decodeChatSecuritySetting,toJson:encodeChatSecuritySetting)
	ChatSecuritySetting? chatSecurity;

	factory GroupOptionalConversationAddRequest.fromJson(Map<String, dynamic> json) {
		return _$GroupOptionalConversationAddRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupOptionalConversationAddRequestToJson(this);

	static Future<GroupOptionalConversationAddRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupOptionalConversationAddRequest>((json)=>GroupOptionalConversationAddRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}