import '../models/group_application_response.dart';
class GroupApplicationResponseResponse{
    GroupApplicationResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    GroupApplicationResponseResponse(
		GroupApplicationResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static GroupApplicationResponseResponse fromJson(Map<String, dynamic> data){
		return new GroupApplicationResponseResponse(
				GroupApplicationResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<GroupApplicationResponseResponse> fromList(List<dynamic> data){
		List<GroupApplicationResponseResponse> list = new List();
    data.forEach((item) {
      list.add(GroupApplicationResponseResponse.fromJson(item));
    });
    return list;
	}
}