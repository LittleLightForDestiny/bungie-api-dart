import 'trending_entry.dart';
import 'paged_query.dart';
class SearchResultOfTrendingEntry{
	List<TrendingEntry> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	SearchResultOfTrendingEntry(
		List<TrendingEntry> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static SearchResultOfTrendingEntry fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfTrendingEntry(
				TrendingEntry.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromJson(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfTrendingEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfTrendingEntry> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfTrendingEntry.fromJson(item));
    });
    return list;
	}
}