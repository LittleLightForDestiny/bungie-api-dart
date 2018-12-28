import 'search_result_of_destiny_entity_search_result_item.dart';

/* The results of a search for Destiny content. This will be improved on over time, I've been doing some experimenting to see what might be useful. */
class DestinyEntitySearchResult{
	
	/* A list of suggested words that might make for better search results, based on the text searched for. */
	List<String> suggestedWords;
	
	/* The items found that are matches/near matches for the searched-for term, sorted by something vaguely resembling "relevance". Hopefully this will get better in the future. */
	SearchResultOfDestinyEntitySearchResultItem results;
	DestinyEntitySearchResult(
		this.suggestedWords,
		this.results,
	);

	static DestinyEntitySearchResult fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyEntitySearchResult(
				data['suggestedWords'] != null ? data['suggestedWords']?.cast<String>() ?? null : null,
				data['results'] != null ? SearchResultOfDestinyEntitySearchResultItem.fromMap(data['results']) : null,
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