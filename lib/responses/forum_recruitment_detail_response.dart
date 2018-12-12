import '../models/forum_recruitment_detail.dart';
class ForumRecruitmentDetailResponse{
    ForumRecruitmentDetail response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    ForumRecruitmentDetailResponse(
		ForumRecruitmentDetail this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static ForumRecruitmentDetailResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new ForumRecruitmentDetailResponse(
				ForumRecruitmentDetail.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<ForumRecruitmentDetailResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<ForumRecruitmentDetailResponse> list = new List();
    data.forEach((item) {
      list.add(ForumRecruitmentDetailResponse.fromMap(item));
    });
    return list;
	}
}