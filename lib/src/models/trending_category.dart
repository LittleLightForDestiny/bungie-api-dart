import 'package:json_annotation/json_annotation.dart';

import 'search_result_of_trending_entry.dart';

part 'trending_category.g.dart';

@JsonSerializable()
class TrendingCategory{	
	TrendingCategory();

	factory TrendingCategory.fromJson(Map<String, dynamic> json) {
		return _$TrendingCategoryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TrendingCategoryToJson(this);
	
	@JsonKey(name:'categoryName')
	String? categoryName;
	
	@JsonKey(name:'entries')
	SearchResultOfTrendingEntry? entries;
	
	@JsonKey(name:'categoryId')
	String? categoryId;
}