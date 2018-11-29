import '../models/group_application_response.dart';
class GroupApplicationResponseResponse{
    GroupApplicationResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    GroupApplicationResponseResponse(
		GroupApplicationResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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