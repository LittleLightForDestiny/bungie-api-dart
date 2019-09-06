
import 'package:json_annotation/json_annotation.dart';
part 'destiny_historical_stats_definition.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsDefinition {

	/// Unique programmer friendly ID for this stat
	@JsonKey(name:'statId')
	String statId;

	/// Statistic group
	@JsonKey(name:'group')
	int group;

	/// Time periods the statistic covers
	@JsonKey(name:'periodTypes')
	List<int> periodTypes;

	/// Game modes where this statistic can be reported.
	@JsonKey(name:'modes')
	List<int> modes;

	/// Category for the stat.
	@JsonKey(name:'category')
	int category;

	/// Display name
	@JsonKey(name:'statName')
	String statName;

	/// Display name abbreviated
	@JsonKey(name:'statNameAbbr')
	String statNameAbbr;

	/// Description of a stat if applicable.
	@JsonKey(name:'statDescription')
	String statDescription;

	/// Unit, if any, for the statistic
	@JsonKey(name:'unitType')
	int unitType;

	/// Optional URI to an icon for the statistic
	@JsonKey(name:'iconImage')
	String iconImage;

	/// Optional icon for the statistic
	@JsonKey(name:'mergeMethod')
	int mergeMethod;

	/// Localized Unit Name for the stat.
	@JsonKey(name:'unitLabel')
	String unitLabel;

	/// Weight assigned to this stat indicating its relative impressiveness.
	@JsonKey(name:'weight')
	int weight;

	/// The tier associated with this medal - be it implicitly or explicitly.
	@JsonKey(name:'medalTierHash')
	int medalTierHash;
	DestinyHistoricalStatsDefinition();

	factory DestinyHistoricalStatsDefinition.fromJson(Map<String, dynamic> json) => _$DestinyHistoricalStatsDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsDefinitionToJson(this);
}
