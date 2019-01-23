import 'trending_category.dart';

/**  */
class TrendingCategories{
	
	/**  */
	List<TrendingCategory> categories;
	TrendingCategories(
		this.categories,
	);

	static TrendingCategories fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingCategories(
				data['categories'] != null ? TrendingCategory.fromList(data['categories']) : null,
		);
	}

	static List<TrendingCategories> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingCategories> list = new List();
    data.forEach((item) {
      list.add(TrendingCategories.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['categories'] = this.categories != null? this.categories.map((item)=>item.toMap()).toList() : null;
		return data;
	}
}