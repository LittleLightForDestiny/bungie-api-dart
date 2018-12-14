import 'search_result_of_trending_entry.dart';
class TrendingCategory{
	String categoryName;
	SearchResultOfTrendingEntry entries;
	String categoryId;
	TrendingCategory(
		this.categoryName,
		this.entries,
		this.categoryId,
	);

	static TrendingCategory fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingCategory(
				data['categoryName'],
				data['entries'] != null ? SearchResultOfTrendingEntry.fromMap(data['entries']) : null,
				data['categoryId'],
		);
	}

	static List<TrendingCategory> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingCategory> list = new List();
    data.forEach((item) {
      list.add(TrendingCategory.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['categoryName'] = this.categoryName;
			data['entries'] = this.entries.toMap();
			data['categoryId'] = this.categoryId;
		return data;
	}
}