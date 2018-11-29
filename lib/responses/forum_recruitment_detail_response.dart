import '../models/forum_recruitment_detail.dart';
class ForumRecruitmentDetailResponse{
    ForumRecruitmentDetail Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    ForumRecruitmentDetailResponse(
		ForumRecruitmentDetail this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static ForumRecruitmentDetailResponse fromJson(Map<String, dynamic> data){
		return new ForumRecruitmentDetailResponse(
				ForumRecruitmentDetail.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<ForumRecruitmentDetailResponse> fromList(List<dynamic> data){
		List<ForumRecruitmentDetailResponse> list = new List();
    data.forEach((item) {
      list.add(ForumRecruitmentDetailResponse.fromJson(item));
    });
    return list;
	}
}