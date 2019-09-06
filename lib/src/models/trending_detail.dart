import 'trending_entry_news.dart';
import 'trending_entry_support_article.dart';
import 'trending_entry_destiny_item.dart';
import 'trending_entry_destiny_activity.dart';
import 'trending_entry_destiny_ritual.dart';
import 'trending_entry_community_creation.dart';
import 'trending_entry_community_stream.dart';

import 'package:json_annotation/json_annotation.dart';
part 'trending_detail.g.dart';

@JsonSerializable()
class TrendingDetail {

	@JsonKey(name:'identifier')
	String identifier;

	@JsonKey(name:'entityType')
	int entityType;

	@JsonKey(name:'news')
	TrendingEntryNews news;

	@JsonKey(name:'support')
	TrendingEntrySupportArticle support;

	@JsonKey(name:'destinyItem')
	TrendingEntryDestinyItem destinyItem;

	@JsonKey(name:'destinyActivity')
	TrendingEntryDestinyActivity destinyActivity;

	@JsonKey(name:'destinyRitual')
	TrendingEntryDestinyRitual destinyRitual;

	@JsonKey(name:'creation')
	TrendingEntryCommunityCreation creation;

	@JsonKey(name:'stream')
	TrendingEntryCommunityStream stream;
	TrendingDetail();

	factory TrendingDetail.fromJson(Map<String, dynamic> json) => _$TrendingDetailFromJson(json);
	
	Map<String, dynamic> toJson() => _$TrendingDetailToJson(this);
}
