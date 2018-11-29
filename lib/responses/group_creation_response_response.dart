import '../models/group_creation_response.dart';
class GroupCreationResponseResponse{
    GroupCreationResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    GroupCreationResponseResponse(
		GroupCreationResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static GroupCreationResponseResponse fromJson(Map<String, dynamic> data){
		return new GroupCreationResponseResponse(
				GroupCreationResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<GroupCreationResponseResponse> fromList(List<dynamic> data){
		List<GroupCreationResponseResponse> list = new List();
    data.forEach((item) {
      list.add(GroupCreationResponseResponse.fromJson(item));
    });
    return list;
	}
}