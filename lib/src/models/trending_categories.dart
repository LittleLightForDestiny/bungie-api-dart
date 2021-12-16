import 'package:json_annotation/json_annotation.dart';

import 'trending_category.dart';

part 'trending_categories.g.dart';

@JsonSerializable()
class TrendingCategories{
	
	TrendingCategories();

	factory TrendingCategories.fromJson(Map<String, dynamic> json) {
		return _$TrendingCategoriesFromJson(json);
	}

	@JsonKey(name:'categories')
	List<TrendingCategory>? categories;

	
	
	Map<String, dynamic> toJson() => _$TrendingCategoriesToJson(this);
}