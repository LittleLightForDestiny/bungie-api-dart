import 'content_item_public_contract.dart';

import 'package:json_annotation/json_annotation.dart';
part 'trending_entry_news.g.dart';

@JsonSerializable()
class TrendingEntryNews {

	@JsonKey(name:'article')
	ContentItemPublicContract article;
	TrendingEntryNews();

	factory TrendingEntryNews.fromJson(Map<String, dynamic> json) => _$TrendingEntryNewsFromJson(json);
	
	Map<String, dynamic> toJson() => _$TrendingEntryNewsToJson(this);
}
