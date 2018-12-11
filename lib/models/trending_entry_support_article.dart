import 'content_item_public_contract.dart';
class TrendingEntrySupportArticle{
	ContentItemPublicContract article;
	TrendingEntrySupportArticle(
		ContentItemPublicContract this.article,
	);

	static TrendingEntrySupportArticle fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingEntrySupportArticle(
				ContentItemPublicContract.fromJson(data['article']),
		);
	}

	static List<TrendingEntrySupportArticle> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingEntrySupportArticle> list = new List();
    data.forEach((item) {
      list.add(TrendingEntrySupportArticle.fromJson(item));
    });
    return list;
	}
}