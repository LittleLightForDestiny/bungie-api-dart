import 'group_v2_card.dart';
import 'paged_query.dart';
class SearchResultOfGroupV2Card{
	List<GroupV2Card> results;
	int totalResults;
	bool hasMore;
	PagedQuery query;
	String replacementContinuationToken;
	bool useTotalResults;
	SearchResultOfGroupV2Card(
		List<GroupV2Card> this.results,
		int this.totalResults,
		bool this.hasMore,
		PagedQuery this.query,
		String this.replacementContinuationToken,
		bool this.useTotalResults,
	);

	static SearchResultOfGroupV2Card fromJson(Map<String, dynamic> data){
		return new SearchResultOfGroupV2Card(
				GroupV2Card.fromList(data['results']),
				data['totalResults'],
				data['hasMore'],
				PagedQuery.fromJson(data['query']),
				data['replacementContinuationToken'],
				data['useTotalResults'],
		);
	}

	static List<SearchResultOfGroupV2Card> fromList(List<dynamic> data){
		List<SearchResultOfGroupV2Card> list = new List();
    data.forEach((item) {
      list.add(SearchResultOfGroupV2Card.fromJson(item));
    });
    return list;
	}
}