import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_public_activity_status.dart';

part 'trending_entry_destiny_activity.g.dart';

@JsonSerializable()
class TrendingEntryDestinyActivity{	
	TrendingEntryDestinyActivity();

	
	@JsonKey(name:'activityHash')
	int? activityHash;
	
	/// Represents the public-facing status of an activity: any data about what is currently active in the Activity, regardless of an individual character's progress in it.
	@JsonKey(name:'status')
	DestinyPublicActivityStatus? status;

	factory TrendingEntryDestinyActivity.fromJson(Map<String, dynamic> json) {
		return _$TrendingEntryDestinyActivityFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TrendingEntryDestinyActivityToJson(this);

	static Future<TrendingEntryDestinyActivity> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, TrendingEntryDestinyActivity>((json)=>TrendingEntryDestinyActivity.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}