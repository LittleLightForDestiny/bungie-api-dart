import 'content_item_public_contract.dart';

/*  */
class TrendingEntrySupportArticle{
	
	/*  */
	ContentItemPublicContract article;
	TrendingEntrySupportArticle(
		this.article,
	);

	static TrendingEntrySupportArticle fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingEntrySupportArticle(
				data['article'] != null ? ContentItemPublicContract.fromMap(data['article']) : null,
		);
	}

	static List<TrendingEntrySupportArticle> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingEntrySupportArticle> list = new List();
    data.forEach((item) {
      list.add(TrendingEntrySupportArticle.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['article'] = this.article.toMap();
		return data;
	}
}