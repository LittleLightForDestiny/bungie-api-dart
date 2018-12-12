import 'destiny_entity_search_result_item.dart';
import 'paged_query.dart';
class SearchResultOfDestinyEntitySearchResultItem{
	List<DestinyEntitySearchResultItem> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	SearchResultOfDestinyEntitySearchResultItem(
		List<DestinyEntitySearchResultItem> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static SearchResultOfDestinyEntitySearchResultItem fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SearchResultOfDestinyEntitySearchResultItem(
				DestinyEntitySearchResultItem.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromMap(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfDestinyEntitySearchResultItem> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SearchResultOfDestinyEntitySearchResultItem> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfDestinyEntitySearchResultItem.fromMap(item));
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