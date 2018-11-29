import '../models/search_result_of_group_member.dart';
class SearchResultOfGroupMemberResponse{
    SearchResultOfGroupMember Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    SearchResultOfGroupMemberResponse(
		SearchResultOfGroupMember this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static SearchResultOfGroupMemberResponse fromJson(Map<String, dynamic> data){
		return new SearchResultOfGroupMemberResponse(
				SearchResultOfGroupMember.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfGroupMemberResponse> fromList(List<dynamic> data){
		List<SearchResultOfGroupMemberResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupMemberResponse.fromJson(item));
    });
    return list;
	}
}