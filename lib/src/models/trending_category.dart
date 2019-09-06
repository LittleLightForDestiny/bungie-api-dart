import 'search_result_of_trending_entry.dart';

import 'package:json_annotation/json_annotation.dart';
part 'trending_category.g.dart';

@JsonSerializable()
class TrendingCategory {

	@JsonKey(name:'categoryName')
	String categoryName;

	@JsonKey(name:'entries')
	SearchResultOfTrendingEntry entries;

	@JsonKey(name:'categoryId')
	String categoryId;
	TrendingCategory();

	factory TrendingCategory.fromJson(Map<String, dynamic> json) => _$TrendingCategoryFromJson(json);
	
	Map<String, dynamic> toJson() => _$TrendingCategoryToJson(this);
}
