import '../models/entity_action_result.dart';

import 'package:json_annotation/json_annotation.dart';
part 'list_of_entity_action_result_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class ListOfEntityActionResultResponse{
	
	/**  */
	@JsonKey(name:'Response')
	List<EntityActionResult> response;
	
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
	ListOfEntityActionResultResponse({
		List<EntityActionResult> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory ListOfEntityActionResultResponse.fromJson(Map<String, dynamic> json) => _$ListOfEntityActionResultResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$ListOfEntityActionResultResponseToJson(this);
}