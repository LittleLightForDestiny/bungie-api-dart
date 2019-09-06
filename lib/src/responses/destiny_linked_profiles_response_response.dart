import '../models/destiny_linked_profiles_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_linked_profiles_response_response.g.dart';

/// I know what you seek. You seek linked accounts. Found them, you have.
/// This contract returns a minimal amount of data about Destiny Accounts that are linked through your Bungie.Net account. We will not return accounts in this response whose
@JsonSerializable()
class DestinyLinkedProfilesResponseResponse {
	
	/// I know what you seek. You seek linked accounts. Found them, you have.
	/// This contract returns a minimal amount of data about Destiny Accounts that are linked through your Bungie.Net account. We will not return accounts in this response whose
	@JsonKey(name:'Response')
	DestinyLinkedProfilesResponse response;
	
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
	DestinyLinkedProfilesResponseResponse({
		this.response,
		this.errorCode,
		this.throttleSeconds,
		this.errorStatus,
		this.message,
		this.messageData,
		this.detailedErrorTrace,
	});

	factory DestinyLinkedProfilesResponseResponse.fromJson(Map<String, dynamic> json) => _$DestinyLinkedProfilesResponseResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$DestinyLinkedProfilesResponseResponseToJson(this);
}
