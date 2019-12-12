import 'package:json_annotation/json_annotation.dart';

import 'destiny_public_activity_status.dart';

part 'trending_entry_destiny_activity.g.dart';

@JsonSerializable()
class TrendingEntryDestinyActivity{
	
	TrendingEntryDestinyActivity();

	factory TrendingEntryDestinyActivity.fromJson(Map<String, dynamic> json) => _$TrendingEntryDestinyActivityFromJson(json);

	@JsonKey(name:'activityHash')
	int activityHash;
	/// Represents the public-facing status of an activity: any data about what is currently active in the Activity, regardless of an individual character&#39;s progress in it.
	@JsonKey(name:'status')
	DestinyPublicActivityStatus status;

	
	
	Map<String, dynamic> toJson() => _$TrendingEntryDestinyActivityToJson(this);
}