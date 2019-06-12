import '../models/group_optional_conversation.dart';

import 'package:json_annotation/json_annotation.dart';
part 'celist_of_group_optional_conversation_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class CEListOfGroupOptionalConversationResponse{
	
	/**  */
	@JsonKey(name:'Response')
	List<GroupOptionalConversation> response;
	
	/**  */
	@JsonKey(name:'ErrorCode')
	int errorCode;
	
	/**  */
	@JsonKey(name:'ThrottleSeconds')
	int throttleSeconds;
	
	/**  */
	@JsonKey(name:'ErrorStatus')
	String errorStatus;
	
	/**  */
	@JsonKey(name:'Message')
	String message;
	
	/**  */
	@JsonKey(name:'MessageData')
	Map<String, String> messageData;
	
	/**  */
	@JsonKey(name:'DetailedErrorTrace')
	String detailedErrorTrace;
	CEListOfGroupOptionalConversationResponse({
		List<GroupOptionalConversation> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory CEListOfGroupOptionalConversationResponse.fromJson(Map<String, dynamic> json) => _$CEListOfGroupOptionalConversationResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$CEListOfGroupOptionalConversationResponseToJson(this);
}