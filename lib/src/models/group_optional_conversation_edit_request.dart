
import 'package:json_annotation/json_annotation.dart';
part 'group_optional_conversation_edit_request.g.dart';

@JsonSerializable()
class GroupOptionalConversationEditRequest {

	@JsonKey(name:'chatEnabled')
	bool chatEnabled;

	@JsonKey(name:'chatName')
	String chatName;

	@JsonKey(name:'chatSecurity')
	int chatSecurity;
	GroupOptionalConversationEditRequest();

	factory GroupOptionalConversationEditRequest.fromJson(Map<String, dynamic> json) => _$GroupOptionalConversationEditRequestFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupOptionalConversationEditRequestToJson(this);
}
