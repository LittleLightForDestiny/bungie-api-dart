import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_activity_mode_type.dart';
import '../enums/bungie_membership_type.dart';

part 'destiny_historical_stats_activity.g.dart';

/// Summary information about the activity that was played.
@JsonSerializable()
class DestinyHistoricalStatsActivity{
	
	DestinyHistoricalStatsActivity();

	factory DestinyHistoricalStatsActivity.fromJson(Map<String, dynamic> json) {
		return _$DestinyHistoricalStatsActivityFromJson(json);
	}

	/// The unique hash identifier of the DestinyActivityDefinition that was played. If I had this to do over, it'd be named activityHash. Too late now.
	@JsonKey(name:'referenceId')
	int? referenceId;
	/// The unique hash identifier of the DestinyActivityDefinition that was played.
	@JsonKey(name:'directorActivityHash')
	int? directorActivityHash;
	/// The unique identifier for this *specific* match that was played.
	/// This value can be used to get additional data about this activity such as who else was playing via the GetPostGameCarnageReport endpoint.
	@JsonKey(name:'instanceId')
	String? instanceId;
	/// Indicates the most specific game mode of the activity that we could find.
	@JsonKey(name:'mode',unknownEnumValue:DestinyActivityModeType.ProtectedInvalidEnumValue)
	DestinyActivityModeType? mode;
	/// The list of all Activity Modes to which this activity applies, including aggregates. This will let you see, for example, whether the activity was both Clash and part of the Trials of the Nine event.
	@JsonKey(name:'modes')
	List<DestinyActivityModeType>? modes;
	/// Whether or not the match was a private match.
	@JsonKey(name:'isPrivate')
	bool? isPrivate;
	/// The Membership Type indicating the platform on which this match was played.
	@JsonKey(name:'membershipType',unknownEnumValue:BungieMembershipType.ProtectedInvalidEnumValue)
	BungieMembershipType? membershipType;

	
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsActivityToJson(this);
}