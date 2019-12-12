import 'package:json_annotation/json_annotation.dart';

import 'content_item_public_contract.dart';

part 'trending_entry_news.g.dart';

@JsonSerializable()
class TrendingEntryNews{
	
	TrendingEntryNews();

	factory TrendingEntryNews.fromJson(Map<String, dynamic> json) => _$TrendingEntryNewsFromJson(json);

	@JsonKey(name:'article')
	ContentItemPublicContract article;

	
	
	Map<String, dynamic> toJson() => _$TrendingEntryNewsToJson(this);
}