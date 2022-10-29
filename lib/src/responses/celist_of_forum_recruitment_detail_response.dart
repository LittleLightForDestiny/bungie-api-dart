import '../models/forum_recruitment_detail.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'celist_of_forum_recruitment_detail_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class CEListOfForumRecruitmentDetailResponse extends BungieNetResponse<List<ForumRecruitmentDetail>> {
	CEListOfForumRecruitmentDetailResponse({
		List<ForumRecruitmentDetail>? response,
		PlatformErrorCodes? errorCode,
		int? throttleSeconds,
		String? errorStatus,
		String? message,
		Map<String, String>? messageData,
		String? detailedErrorTrace,
	}):super(
		response:response,
		errorCode:errorCode,
		throttleSeconds:throttleSeconds,
		errorStatus:errorStatus,
		message:message,
		messageData:messageData,
		detailedErrorTrace:detailedErrorTrace,
	);

	factory CEListOfForumRecruitmentDetailResponse.fromJson(Map<String, dynamic> json) => _$CEListOfForumRecruitmentDetailResponseFromJson(json);

	Map<String, dynamic> toJson() => _$CEListOfForumRecruitmentDetailResponseToJson(this);

	static Future<CEListOfForumRecruitmentDetailResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, CEListOfForumRecruitmentDetailResponse>((json)=>CEListOfForumRecruitmentDetailResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}