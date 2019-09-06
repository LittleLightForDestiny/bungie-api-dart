
import 'package:json_annotation/json_annotation.dart';
part 'destiny_progression.g.dart';

/// Information about a current character&#39;s status with a Progression. A progression is a value that can increase with activity and has levels. Think Character Level and Reputation Levels. Combine this &quot;live&quot; data with the related DestinyProgressionDefinition for a full picture of the Progression.
@JsonSerializable()
class DestinyProgression {

	/// The hash identifier of the Progression in question. Use it to look up the DestinyProgressionDefinition in static data.
	@JsonKey(name:'progressionHash')
	int progressionHash;

	/// The amount of progress earned today for this progression.
	@JsonKey(name:'dailyProgress')
	int dailyProgress;

	/// If this progression has a daily limit, this is that limit.
	@JsonKey(name:'dailyLimit')
	int dailyLimit;

	/// The amount of progress earned toward this progression in the current week.
	@JsonKey(name:'weeklyProgress')
	int weeklyProgress;

	/// If this progression has a weekly limit, this is that limit.
	@JsonKey(name:'weeklyLimit')
	int weeklyLimit;

	/// This is the total amount of progress obtained overall for this progression (for instance, the total amount of Character Level experience earned)
	@JsonKey(name:'currentProgress')
	int currentProgress;

	/// This is the level of the progression (for instance, the Character Level).
	@JsonKey(name:'level')
	int level;

	/// This is the maximum possible level you can achieve for this progression (for example, the maximum character level obtainable)
	@JsonKey(name:'levelCap')
	int levelCap;

	/// Progressions define their levels in &quot;steps&quot;. Since the last step may be repeatable, the user may be at a higher level than the actual Step achieved in the progression. Not necessarily useful, but potentially interesting for those cruising the API. Relate this to the &quot;steps&quot; property of the DestinyProgression to see which step the user is on, if you care about that. (Note that this is Content Version dependent since it refers to indexes.)
	@JsonKey(name:'stepIndex')
	int stepIndex;

	/// The amount of progression (i.e. &quot;Experience&quot;) needed to reach the next level of this Progression. Jeez, progression is such an overloaded word.
	@JsonKey(name:'progressToNextLevel')
	int progressToNextLevel;

	/// The total amount of progression (i.e. &quot;Experience&quot;) needed in order to reach the next level.
	@JsonKey(name:'nextLevelAt')
	int nextLevelAt;
	DestinyProgression();

	factory DestinyProgression.fromJson(Map<String, dynamic> json) => _$DestinyProgressionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyProgressionToJson(this);
}
