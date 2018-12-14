import '../models/forum_recruitment_detail.dart';
class CEListOfForumRecruitmentDetailResponse{
    List<ForumRecruitmentDetail> response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    CEListOfForumRecruitmentDetailResponse(
		List<ForumRecruitmentDetail> this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static CEListOfForumRecruitmentDetailResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new CEListOfForumRecruitmentDetailResponse(
				data['Response'] != null ? ForumRecruitmentDetail.fromList(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<CEListOfForumRecruitmentDetailResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<CEListOfForumRecruitmentDetailResponse> list = new List();
    data.forEach((item) {
      list.add(CEListOfForumRecruitmentDetailResponse.fromMap(item));
    });
    return list;
	}
}