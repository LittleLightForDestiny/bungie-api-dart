
import 'package:json_annotation/json_annotation.dart';
part 'destiny_historical_stats_activity.g.dart';

/// Summary information about the activity that was played.
@JsonSerializable()
class DestinyHistoricalStatsActivity {

	/// The unique hash identifier of the DestinyActivityDefinition that was played. If I had this to do over, it&#39;d be named activityHash. Too late now.
	@JsonKey(name:'referenceId')
	int referenceId;

	/// The unique hash identifier of the DestinyActivityDefinition that was played.
	@JsonKey(name:'directorActivityHash')
	int directorActivityHash;

	/// The unique identifier for this *specific* match that was played.
	/// This value can be used to get additional data about this activity such as who else was playing via the GetPostGameCarnageReport endpoint.
	@JsonKey(name:'instanceId')
	String instanceId;

	/// Indicates the most specific game mode of the activity that we could find.
	@JsonKey(name:'mode')
	int mode;

	/// The list of all Activity Modes to which this activity applies, including aggregates. This will let you see, for example, whether the activity was both Clash and part of the Trials of the Nine event.
	@JsonKey(name:'modes')
	List<int> modes;

	/// Whether or not the match was a private match. There&#39;s no private matches in Destiny 2... yet... DUN DUN DUNNNN
	@JsonKey(name:'isPrivate')
	bool isPrivate;
	DestinyHistoricalStatsActivity();

	factory DestinyHistoricalStatsActivity.fromJson(Map<String, dynamic> json) => _$DestinyHistoricalStatsActivityFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsActivityToJson(this);
}
