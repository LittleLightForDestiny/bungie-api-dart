import 'search_result_of_destiny_entity_search_result_item.dart';
class DestinyEntitySearchResult{
	List<String> suggestedWords;
	SearchResultOfDestinyEntitySearchResultItem results;
	DestinyEntitySearchResult(
		List<String> this.suggestedWords,
		SearchResultOfDestinyEntitySearchResultItem this.results,
	);

	static DestinyEntitySearchResult fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyEntitySearchResult(
				data['suggestedWords'],
				data['results'],
		);
	}

	static List<DestinyEntitySearchResult> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyEntitySearchResult> list = new List();
    data.forEach((item) {
      list.add(DestinyEntitySearchResult.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['suggestedWords'] = this.suggestedWords;
			data['results'] = this.results;
		return data;
	}
}