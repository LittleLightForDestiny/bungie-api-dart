import '../models/public_partnership_detail.dart';

import 'package:json_annotation/json_annotation.dart';
part 'celist_of_public_partnership_detail_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class CEListOfPublicPartnershipDetailResponse{
	
	/**  */
	@JsonKey(name:'Response')
	List<PublicPartnershipDetail> response;
	
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
	CEListOfPublicPartnershipDetailResponse({
		List<PublicPartnershipDetail> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory CEListOfPublicPartnershipDetailResponse.fromJson(Map<String, dynamic> json) => _$CEListOfPublicPartnershipDetailResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$CEListOfPublicPartnershipDetailResponseToJson(this);
}