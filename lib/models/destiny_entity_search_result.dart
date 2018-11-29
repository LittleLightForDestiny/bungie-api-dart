import 'search_result_of_destiny_entity_search_result_item.dart';
class DestinyEntitySearchResult{
	List<String> suggestedWords;
	SearchResultOfDestinyEntitySearchResultItem results;
	DestinyEntitySearchResult(
		List<String> this.suggestedWords,
		SearchResultOfDestinyEntitySearchResultItem this.results,
	);

	static DestinyEntitySearchResult fromJson(Map<String, dynamic> data){
		return new DestinyEntitySearchResult(
				data['suggestedWords'],
				data['results'],
		);
	}

	static List<DestinyEntitySearchResult> fromList(List<dynamic> data){
		List<DestinyEntitySearchResult> list = new List();
    data.forEach((item) {
      list.add(DestinyEntitySearchResult.fromJson(item));
    });
    return list;
	}
}