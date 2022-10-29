import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'search_result_of_trending_entry.dart';

part 'trending_category.g.dart';

@JsonSerializable()
class TrendingCategory{	
	TrendingCategory();

	
	@JsonKey(name:'categoryName')
	String? categoryName;
	
	@JsonKey(name:'entries')
	SearchResultOfTrendingEntry? entries;
	
	@JsonKey(name:'categoryId')
	String? categoryId;

	factory TrendingCategory.fromJson(Map<String, dynamic> json) {
		return _$TrendingCategoryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TrendingCategoryToJson(this);

	static Future<TrendingCategory> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, TrendingCategory>((json)=>TrendingCategory.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}