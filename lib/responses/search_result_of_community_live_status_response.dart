import '../models/search_result_of_community_live_status.dart';
class SearchResultOfCommunityLiveStatusResponse{
    SearchResultOfCommunityLiveStatus Response;
    int ErrorCode;
    int ThrottleSeconds;
    String ErrorStatus;
    String Message;
    Map<String, dynamic> MessageData;
    String DetailedErrorTrace;

    SearchResultOfCommunityLiveStatusResponse(
		SearchResultOfCommunityLiveStatus this.Response,
		int this.ErrorCode,
		int this.ThrottleSeconds,
		String this.ErrorStatus,
		String this.Message,
		Map<String, dynamic> this.MessageData,
		String this.DetailedErrorTrace,
	);

    static SearchResultOfCommunityLiveStatusResponse fromJson(Map<String, dynamic> data){
		return new SearchResultOfCommunityLiveStatusResponse(
				SearchResultOfCommunityLiveStatus.fromJson(data['Response']),
				data['ErrorCode'],
				data['ThrottleSeconds'],
				data['ErrorStatus'],
				data['Message'],
				data['MessageData'],
				data['DetailedErrorTrace'],
		);
	}

	static List<SearchResultOfCommunityLiveStatusResponse> fromList(List<dynamic> data){
		List<SearchResultOfCommunityLiveStatusResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfCommunityLiveStatusResponse.fromJson(item));
    });
    return list;
	}
}