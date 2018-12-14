import '../models/group_application_response.dart';
class GroupApplicationResponseResponse{
    GroupApplicationResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    GroupApplicationResponseResponse(
		GroupApplicationResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static GroupApplicationResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupApplicationResponseResponse(
				data['Response'] != null ? GroupApplicationResponse.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<GroupApplicationResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupApplicationResponseResponse> list = new List();
    data.forEach((item) {
      list.add(GroupApplicationResponseResponse.fromMap(item));
    });
    return list;
	}
}