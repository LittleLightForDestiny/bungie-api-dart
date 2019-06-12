import '../models/user_info_card.dart';

import 'package:json_annotation/json_annotation.dart';
part 'ienumerable_of_user_info_card_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class IEnumerableOfUserInfoCardResponse{
	
	/**  */
	@JsonKey(name:'Response')
	List<UserInfoCard> response;
	
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
	IEnumerableOfUserInfoCardResponse({
		List<UserInfoCard> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory IEnumerableOfUserInfoCardResponse.fromJson(Map<String, dynamic> json) => _$IEnumerableOfUserInfoCardResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$IEnumerableOfUserInfoCardResponseToJson(this);
}