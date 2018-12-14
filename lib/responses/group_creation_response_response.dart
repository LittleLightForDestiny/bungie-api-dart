import '../models/group_creation_response.dart';
class GroupCreationResponseResponse{
    GroupCreationResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    GroupCreationResponseResponse(
		GroupCreationResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static GroupCreationResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupCreationResponseResponse(
				data['Response'] != null ? GroupCreationResponse.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<GroupCreationResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupCreationResponseResponse> list = new List();
    data.forEach((item) {
      list.add(GroupCreationResponseResponse.fromMap(item));
    });
    return list;
	}
}