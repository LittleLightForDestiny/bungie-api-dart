import '../models/application.dart';

import 'package:json_annotation/json_annotation.dart';
part 'ienumerable_of_application_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class IEnumerableOfApplicationResponse{
	
	/**  */
	@JsonKey(name:'Response')
	List<Application> response;
	
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
	IEnumerableOfApplicationResponse({
		List<Application> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory IEnumerableOfApplicationResponse.fromJson(Map<String, dynamic> json) => _$IEnumerableOfApplicationResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$IEnumerableOfApplicationResponseToJson(this);
}