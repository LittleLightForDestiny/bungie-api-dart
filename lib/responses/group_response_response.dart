import '../models/group_response.dart';
class GroupResponseResponse{
    GroupResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    GroupResponseResponse(
		GroupResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static GroupResponseResponse fromJson(Map<String, dynamic> data){
		return new GroupResponseResponse(
				GroupResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<GroupResponseResponse> fromList(List<dynamic> data){
		List<GroupResponseResponse> list = new List();
    data.forEach((item) {
      list.add(GroupResponseResponse.fromJson(item));
    });
    return list;
	}
}