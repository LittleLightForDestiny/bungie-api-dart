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

	static SearchResultOfFireteamResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfFireteamResponse(
				FireteamResponse.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromMap(data['query']),
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
      list.add(SearchResultOfFireteamResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['results'] = this.results.map((item)=>item.toMap()).toList();
			data['totalResults'] = this.totalResults;
			data['hasMore'] = this.hasMore;
			data['query'] = this.query.toMap();
			data['replacementContinuationToken'] = this.replacementContinuationToken;
			data['useTotalResults'] = this.useTotalResults;
		return data;
	}
}