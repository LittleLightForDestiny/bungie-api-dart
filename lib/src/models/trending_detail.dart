import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/trending_entry_type.dart';
import 'trending_entry_news.dart';
import 'trending_entry_support_article.dart';
import 'trending_entry_destiny_item.dart';
import 'trending_entry_destiny_activity.dart';
import 'trending_entry_destiny_ritual.dart';
import 'trending_entry_community_creation.dart';

part 'trending_detail.g.dart';

@JsonSerializable()
class TrendingDetail{	
	TrendingDetail();

	
	@JsonKey(name:'identifier')
	String? identifier;
	
	@JsonKey(name:'entityType',fromJson:decodeTrendingEntryType,toJson:encodeTrendingEntryType)
	TrendingEntryType? entityType;
	
	@JsonKey(name:'news')
	TrendingEntryNews? news;
	
	@JsonKey(name:'support')
	TrendingEntrySupportArticle? support;
	
	@JsonKey(name:'destinyItem')
	TrendingEntryDestinyItem? destinyItem;
	
	@JsonKey(name:'destinyActivity')
	TrendingEntryDestinyActivity? destinyActivity;
	
	@JsonKey(name:'destinyRitual')
	TrendingEntryDestinyRitual? destinyRitual;
	
	@JsonKey(name:'creation')
	TrendingEntryCommunityCreation? creation;

	factory TrendingDetail.fromJson(Map<String, dynamic> json) {
		return _$TrendingDetailFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TrendingDetailToJson(this);

	static Future<TrendingDetail> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, TrendingDetail>((json)=>TrendingDetail.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}