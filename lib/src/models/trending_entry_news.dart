import 'package:json_annotation/json_annotation.dart';

import 'content_item_public_contract.dart';

part 'trending_entry_news.g.dart';

@JsonSerializable()
class TrendingEntryNews{	
	TrendingEntryNews();

	factory TrendingEntryNews.fromJson(Map<String, dynamic> json) {
		return _$TrendingEntryNewsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TrendingEntryNewsToJson(this);
	
	@JsonKey(name:'article')
	ContentItemPublicContract? article;
}