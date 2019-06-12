import '../models/content_type_description.dart';

import 'package:json_annotation/json_annotation.dart';
part 'content_type_description_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class ContentTypeDescriptionResponse{
	
	/**  */
	@JsonKey(name:'Response')
	ContentTypeDescription response;
	
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
	ContentTypeDescriptionResponse({
		ContentTypeDescription this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory ContentTypeDescriptionResponse.fromJson(Map<String, dynamic> json) => _$ContentTypeDescriptionResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$ContentTypeDescriptionResponseToJson(this);
}