import 'community_live_status.dart';
import 'paged_query.dart';
class SearchResultOfCommunityLiveStatus{
	List<CommunityLiveStatus> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	SearchResultOfCommunityLiveStatus(
		List<CommunityLiveStatus> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static SearchResultOfCommunityLiveStatus fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfCommunityLiveStatus(
				CommunityLiveStatus.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromMap(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfCommunityLiveStatus> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfCommunityLiveStatus> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfCommunityLiveStatus.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['results'] = results.map((item)=>item.toMap());
			data['totalResults'] = totalResults;
			data['hasMore'] = hasMore;
			data['query'] = query.toMap();
			data['replacementContinuationToken'] = replacementContinuationToken;
			data['useTotalResults'] = useTotalResults;
	}
}