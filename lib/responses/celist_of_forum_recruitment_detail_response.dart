import '../models/forum_recruitment_detail.dart';
class CEListOfForumRecruitmentDetailResponse{
    List<ForumRecruitmentDetail> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    CEListOfForumRecruitmentDetailResponse(
		List<ForumRecruitmentDetail> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static CEListOfForumRecruitmentDetailResponse fromJson(Map<String, dynamic> data){
		return new CEListOfForumRecruitmentDetailResponse(
				ForumRecruitmentDetail.fromList(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<CEListOfForumRecruitmentDetailResponse> fromList(List<dynamic> data){
		List<CEListOfForumRecruitmentDetailResponse> list = new List();
    data.forEach((item) {
      list.add(CEListOfForumRecruitmentDetailResponse.fromJson(item));
    });
    return list;
	}
}