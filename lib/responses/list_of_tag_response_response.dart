import '../models/tag_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'list_of_tag_response_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class ListOfTagResponseResponse{
	
	/**  */
	@JsonKey(name:'Response')
	List<TagResponse> response;
	
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
	ListOfTagResponseResponse({
		List<TagResponse> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory ListOfTagResponseResponse.fromJson(Map<String, dynamic> json) => _$ListOfTagResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$ListOfTagResponseResponseToJson(this);
}