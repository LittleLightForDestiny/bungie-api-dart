import 'search_result_of_trending_entry.dart';
class TrendingCategory{
	String categoryName;
	SearchResultOfTrendingEntry entries;
	String categoryId;
	TrendingCategory(
		String this.categoryName,
		SearchResultOfTrendingEntry this.entries,
		String this.categoryId,
	);

	static TrendingCategory fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingCategory(
				data['categoryName'],
				SearchResultOfTrendingEntry.fromJson(data['entries']),
				data['categoryId'],
		);
	}

	static List<TrendingCategory> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingCategory> list = new List();
    data.forEach((item) {
      list.add(TrendingCategory.fromJson(item));
    });
    return list;
	}
}