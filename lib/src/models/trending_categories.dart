import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'trending_category.dart';

part 'trending_categories.g.dart';

@JsonSerializable()
class TrendingCategories{	
	TrendingCategories();

	
	@JsonKey(name:'categories')
	List<TrendingCategory>? categories;

	factory TrendingCategories.fromJson(Map<String, dynamic> json) {
		return _$TrendingCategoriesFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TrendingCategoriesToJson(this);

	static Future<TrendingCategories> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, TrendingCategories>((json)=>TrendingCategories.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}