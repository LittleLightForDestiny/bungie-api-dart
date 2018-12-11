import '../models/group_creation_response.dart';
class GroupCreationResponseResponse{
    GroupCreationResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    GroupCreationResponseResponse(
		GroupCreationResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static GroupCreationResponseResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
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
		if(data == null) {
			return null;
		};
		List<GroupCreationResponseResponse> list = new List();
    data.forEach((item) {
      list.add(GroupCreationResponseResponse.fromJson(item));
    });
    return list;
	}
}