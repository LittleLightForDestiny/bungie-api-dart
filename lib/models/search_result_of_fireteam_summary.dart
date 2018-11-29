import 'fireteam_summary.dart';
import 'paged_query.dart';
class SearchResultOfFireteamSummary{
	List<FireteamSummary> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	SearchResultOfFireteamSummary(
		List<FireteamSummary> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static SearchResultOfFireteamSummary fromJson(Map<String, dynamic> data){
		return new SearchResultOfFireteamSummary(
				FireteamSummary.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromJson(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfFireteamSummary> fromList(List<dynamic> data){
		List<SearchResultOfFireteamSummary> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfFireteamSummary.fromJson(item));
    });
    return list;
	}
}