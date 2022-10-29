import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'group_optional_conversation_edit_request.g.dart';

@JsonSerializable()
class GroupOptionalConversationEditRequest{	
	GroupOptionalConversationEditRequest();

	
	@JsonKey(name:'chatEnabled')
	bool? chatEnabled;
	
	@JsonKey(name:'chatName')
	String? chatName;
	
	@JsonKey(name:'chatSecurity')
	int? chatSecurity;

	factory GroupOptionalConversationEditRequest.fromJson(Map<String, dynamic> json) {
		return _$GroupOptionalConversationEditRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupOptionalConversationEditRequestToJson(this);

	static Future<GroupOptionalConversationEditRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupOptionalConversationEditRequest>((json)=>GroupOptionalConversationEditRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}