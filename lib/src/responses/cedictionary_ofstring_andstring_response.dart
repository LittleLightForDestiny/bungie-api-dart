
import 'package:json_annotation/json_annotation.dart';
part 'cedictionary_ofstring_andstring_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class CEDictionaryOfstringAndstringResponse{
	
	/**  */
	@JsonKey(name:'Response')
	Map<String, String> response;
	
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
	CEDictionaryOfstringAndstringResponse({
		Map<String, String> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory CEDictionaryOfstringAndstringResponse.fromJson(Map<String, dynamic> json) => _$CEDictionaryOfstringAndstringResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$CEDictionaryOfstringAndstringResponseToJson(this);
}