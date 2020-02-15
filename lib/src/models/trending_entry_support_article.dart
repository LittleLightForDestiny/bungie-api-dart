import 'package:json_annotation/json_annotation.dart';

import 'content_item_public_contract.dart';

part 'trending_entry_support_article.g.dart';

@JsonSerializable()
class TrendingEntrySupportArticle{
	
	TrendingEntrySupportArticle();

	factory TrendingEntrySupportArticle.fromJson(Map<String, dynamic> json) {
		try{
			return _$TrendingEntrySupportArticleFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'article')
	ContentItemPublicContract article;

	
	
	Map<String, dynamic> toJson() => _$TrendingEntrySupportArticleToJson(this);
}