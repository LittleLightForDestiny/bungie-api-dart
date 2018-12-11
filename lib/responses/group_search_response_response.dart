import '../models/group_search_response.dart';
class GroupSearchResponseResponse{
    GroupSearchResponse response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, dynamic> messageData;
    String detailedErrorTrace;

    GroupSearchResponseResponse(
		GroupSearchResponse this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, dynamic> this.messageData,
		String this.detailedErrorTrace,
	);

    static GroupSearchResponseResponse fromJson(Map<String, dynamic> data){
		return new GroupSearchResponseResponse(
				GroupSearchResponse.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<GroupSearchResponseResponse> fromList(List<dynamic> data){
		List<GroupSearchResponseResponse> list = new List();
    data.forEach((item) {
      list.add(GroupSearchResponseResponse.fromJson(item));
    });
    return list;
	}
}