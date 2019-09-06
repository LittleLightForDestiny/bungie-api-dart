import 'search_result_of_destiny_entity_search_result_item.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_entity_search_result.g.dart';

/// The results of a search for Destiny content. This will be improved on over time, I&#39;ve been doing some experimenting to see what might be useful.
@JsonSerializable()
class DestinyEntitySearchResult {

	/// A list of suggested words that might make for better search results, based on the text searched for.
	@JsonKey(name:'suggestedWords')
	List<String> suggestedWords;

	/// The items found that are matches&#x2F;near matches for the searched-for term, sorted by something vaguely resembling &quot;relevance&quot;. Hopefully this will get better in the future.
	@JsonKey(name:'results')
	SearchResultOfDestinyEntitySearchResultItem results;
	DestinyEntitySearchResult();

	factory DestinyEntitySearchResult.fromJson(Map<String, dynamic> json) => _$DestinyEntitySearchResultFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyEntitySearchResultToJson(this);
}
