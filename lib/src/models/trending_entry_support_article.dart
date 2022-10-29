import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'content_item_public_contract.dart';

part 'trending_entry_support_article.g.dart';

@JsonSerializable()
class TrendingEntrySupportArticle{	
	TrendingEntrySupportArticle();

	
	@JsonKey(name:'article')
	ContentItemPublicContract? article;

	factory TrendingEntrySupportArticle.fromJson(Map<String, dynamic> json) {
		return _$TrendingEntrySupportArticleFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TrendingEntrySupportArticleToJson(this);

	static Future<TrendingEntrySupportArticle> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, TrendingEntrySupportArticle>((json)=>TrendingEntrySupportArticle.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}