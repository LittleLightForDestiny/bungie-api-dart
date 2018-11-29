import '../models/group_search_response.dart';
class GroupSearchResponseResponse{
    GroupSearchResponse Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    GroupSearchResponseResponse(
		GroupSearchResponse this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
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