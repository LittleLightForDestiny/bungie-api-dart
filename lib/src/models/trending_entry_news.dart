import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'content_item_public_contract.dart';

part 'trending_entry_news.g.dart';

@JsonSerializable()
class TrendingEntryNews{	
	TrendingEntryNews();

	
	@JsonKey(name:'article')
	ContentItemPublicContract? article;

	factory TrendingEntryNews.fromJson(Map<String, dynamic> json) {
		return _$TrendingEntryNewsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TrendingEntryNewsToJson(this);

	static Future<TrendingEntryNews> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, TrendingEntryNews>((json)=>TrendingEntryNews.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}