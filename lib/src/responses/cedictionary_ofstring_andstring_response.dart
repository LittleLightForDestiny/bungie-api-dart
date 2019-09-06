
import 'package:json_annotation/json_annotation.dart';
part 'cedictionary_ofstring_andstring_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class CEDictionaryOfstringAndstringResponse {
	
	@JsonKey(name:'Response')
	Map<String, String> response;
	
	@JsonKey(name:'ErrorCode')
	int errorCode;
	
	@JsonKey(name:'ThrottleSeconds')
	int throttleSeconds;
	
	@JsonKey(name:'ErrorStatus')
	String errorStatus;
	
	@JsonKey(name:'Message')
	String message;
	
	@JsonKey(name:'MessageData')
	Map<String, String> messageData;
	
	@JsonKey(name:'DetailedErrorTrace')
	String detailedErrorTrace;
	CEDictionaryOfstringAndstringResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory CEDictionaryOfstringAndstringResponse.fromJson(Map<String, dynamic> json) => _$CEDictionaryOfstringAndstringResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$CEDictionaryOfstringAndstringResponseToJson(this);
}
