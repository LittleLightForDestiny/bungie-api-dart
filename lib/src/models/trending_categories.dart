import 'package:json_annotation/json_annotation.dart';

import 'trending_category.dart';

part 'trending_categories.g.dart';

@JsonSerializable()
class TrendingCategories{
	
	TrendingCategories();

	factory TrendingCategories.fromJson(Map<String, dynamic> json) {
		try{
			return _$TrendingCategoriesFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'categories')
	List<TrendingCategory> categories;

	
	
	Map<String, dynamic> toJson() => _$TrendingCategoriesToJson(this);
}