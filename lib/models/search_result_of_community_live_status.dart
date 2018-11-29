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

	static SearchResultOfCommunityLiveStatus fromJson(Map<String, dynamic> data){
		return new SearchResultOfCommunityLiveStatus(
				CommunityLiveStatus.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromJson(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfCommunityLiveStatus> fromList(List<dynamic> data){
		List<SearchResultOfCommunityLiveStatus> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfCommunityLiveStatus.fromJson(item));
    });
    return list;
	}
}