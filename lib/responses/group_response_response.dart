import '../models/group_response.dart';
class GroupResponseResponse{
    GroupResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    GroupResponseResponse(
		GroupResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static GroupResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupResponseResponse(
				GroupResponse.fromMap(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<GroupResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupResponseResponse> list = new List();
    data.forEach((item) {
      list.add(GroupResponseResponse.fromMap(item));
    });
    return list;
	}
}