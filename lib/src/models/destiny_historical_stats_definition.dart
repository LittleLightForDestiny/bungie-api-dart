import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_stats_group_type.dart';
import '../enums/period_type.dart';
import '../enums/destiny_activity_mode_type.dart';
import '../enums/destiny_stats_category_type.dart';
import '../enums/unit_type.dart';

part 'destiny_historical_stats_definition.g.dart';

@JsonSerializable()
class DestinyHistoricalStatsDefinition{	
	DestinyHistoricalStatsDefinition();

	
	/// Unique programmer friendly ID for this stat
	@JsonKey(name:'statId')
	String? statId;
	
	/// Statistic group
	@JsonKey(name:'group',fromJson:decodeDestinyStatsGroupType,toJson:encodeDestinyStatsGroupType)
	DestinyStatsGroupType? group;
	
	/// Time periods the statistic covers
	@JsonKey(name:'periodTypes')
	List<PeriodType>? periodTypes;
	
	/// Game modes where this statistic can be reported.
	@JsonKey(name:'modes')
	List<DestinyActivityModeType>? modes;
	
	/// Category for the stat.
	@JsonKey(name:'category',fromJson:decodeDestinyStatsCategoryType,toJson:encodeDestinyStatsCategoryType)
	DestinyStatsCategoryType? category;
	
	/// Display name
	@JsonKey(name:'statName')
	String? statName;
	
	/// Display name abbreviated
	@JsonKey(name:'statNameAbbr')
	String? statNameAbbr;
	
	/// Description of a stat if applicable.
	@JsonKey(name:'statDescription')
	String? statDescription;
	
	/// Unit, if any, for the statistic
	@JsonKey(name:'unitType',fromJson:decodeUnitType,toJson:encodeUnitType)
	UnitType? unitType;
	
	/// Optional URI to an icon for the statistic
	@JsonKey(name:'iconImage')
	String? iconImage;
	
	/// Optional icon for the statistic
	@JsonKey(name:'mergeMethod')
	int? mergeMethod;
	
	/// Localized Unit Name for the stat.
	@JsonKey(name:'unitLabel')
	String? unitLabel;
	
	/// Weight assigned to this stat indicating its relative impressiveness.
	@JsonKey(name:'weight')
	int? weight;
	
	/// The tier associated with this medal - be it implicitly or explicitly.
	@JsonKey(name:'medalTierHash')
	int? medalTierHash;

	factory DestinyHistoricalStatsDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyHistoricalStatsDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyHistoricalStatsDefinitionToJson(this);

	static Future<DestinyHistoricalStatsDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyHistoricalStatsDefinition>((json)=>DestinyHistoricalStatsDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}