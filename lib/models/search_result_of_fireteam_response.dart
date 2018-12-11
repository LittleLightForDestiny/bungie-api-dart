import 'fireteam_response.dart';
import 'paged_query.dart';
class SearchResultOfFireteamResponse{
	List<FireteamResponse> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	SearchResultOfFireteamResponse(
		List<FireteamResponse> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static SearchResultOfFireteamResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfFireteamResponse(
				FireteamResponse.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromJson(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfFireteamResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfFireteamResponse> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfFireteamResponse.fromJson(item));
    });
    return list;
	}
}