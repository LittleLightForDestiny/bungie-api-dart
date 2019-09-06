import 'trending_category.dart';

import 'package:json_annotation/json_annotation.dart';
part 'trending_categories.g.dart';

@JsonSerializable()
class TrendingCategories {

	@JsonKey(name:'categories')
	List<TrendingCategory> categories;
	TrendingCategories();

	factory TrendingCategories.fromJson(Map<String, dynamic> json) => _$TrendingCategoriesFromJson(json);
	
	Map<String, dynamic> toJson() => _$TrendingCategoriesToJson(this);
}
