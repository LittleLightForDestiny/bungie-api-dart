import '../models/forum_recruitment_detail.dart';

import 'package:json_annotation/json_annotation.dart';
part 'celist_of_forum_recruitment_detail_response.g.dart';

/** Look at the Response property for more information about the nature of this response */
@JsonSerializable()
class CEListOfForumRecruitmentDetailResponse{
	
	/**  */
	@JsonKey(name:'Response')
	List<ForumRecruitmentDetail> response;
	
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
	CEListOfForumRecruitmentDetailResponse({
		List<ForumRecruitmentDetail> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	});

	factory CEListOfForumRecruitmentDetailResponse.fromJson(Map<String, dynamic> json) => _$CEListOfForumRecruitmentDetailResponseFromJson(json);
	

	Map<String, dynamic> toJson() => _$CEListOfForumRecruitmentDetailResponseToJson(this);
}