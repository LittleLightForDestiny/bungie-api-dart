
import 'package:json_annotation/json_annotation.dart';
part 'group_optional_conversation.g.dart';

@JsonSerializable()
class GroupOptionalConversation {

	@JsonKey(name:'groupId')
	String groupId;

	@JsonKey(name:'conversationId')
	String conversationId;

	@JsonKey(name:'chatEnabled')
	bool chatEnabled;

	@JsonKey(name:'chatName')
	String chatName;

	@JsonKey(name:'chatSecurity')
	int chatSecurity;
	GroupOptionalConversation();

	factory GroupOptionalConversation.fromJson(Map<String, dynamic> json) => _$GroupOptionalConversationFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupOptionalConversationToJson(this);
}
