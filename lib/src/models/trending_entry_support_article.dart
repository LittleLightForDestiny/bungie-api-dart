import 'content_item_public_contract.dart';

import 'package:json_annotation/json_annotation.dart';
part 'trending_entry_support_article.g.dart';

@JsonSerializable()
class TrendingEntrySupportArticle {

	@JsonKey(name:'article')
	ContentItemPublicContract article;
	TrendingEntrySupportArticle();

	factory TrendingEntrySupportArticle.fromJson(Map<String, dynamic> json) => _$TrendingEntrySupportArticleFromJson(json);
	
	Map<String, dynamic> toJson() => _$TrendingEntrySupportArticleToJson(this);
}
