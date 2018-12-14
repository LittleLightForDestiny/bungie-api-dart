import '../models/group_search_response.dart';
class GroupSearchResponseResponse{
    GroupSearchResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    GroupSearchResponseResponse(
		GroupSearchResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static GroupSearchResponseResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new GroupSearchResponseResponse(
				data['Response'] != null ? GroupSearchResponse.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<GroupSearchResponseResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<GroupSearchResponseResponse> list = new List();
    data.forEach((item) {
      list.add(GroupSearchResponseResponse.fromMap(item));
    });
    return list;
	}
}