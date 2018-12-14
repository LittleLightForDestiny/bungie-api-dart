import '../models/search_result_of_community_live_status.dart';
class SearchResultOfCommunityLiveStatusResponse{
    SearchResultOfCommunityLiveStatus response;
    int errorCode;
    int throttleSeconds;
    String errorStatus;
    String message;
    Map<String, String> messageData;
    String detailedErrorTrace;

    SearchResultOfCommunityLiveStatusResponse(
		SearchResultOfCommunityLiveStatus this.response,
		int this.errorCode,
		int this.throttleSeconds,
		String this.errorStatus,
		String this.message,
		Map<String, String> this.messageData,
		String this.detailedErrorTrace,
	);

    static SearchResultOfCommunityLiveStatusResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfCommunityLiveStatusResponse(
				data['Response'] != null ? SearchResultOfCommunityLiveStatus.fromMap(data['Response']) : null,
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'] != null ? Map<String, String>.from(data['MessageData'].map((k, v)=>MapEntry(k, v))) : null,
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfCommunityLiveStatusResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfCommunityLiveStatusResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfCommunityLiveStatusResponse.fromMap(item));
    });
    return list;
	}
}