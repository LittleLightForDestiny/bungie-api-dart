import 'package:json_annotation/json_annotation.dart';

import 'destiny_equip_item_result.dart';

part 'destiny_equip_item_results.g.dart';

/// The results of a bulk Equipping operation performed through the Destiny API.
@JsonSerializable()
class DestinyEquipItemResults{
	
	DestinyEquipItemResults();

	factory DestinyEquipItemResults.fromJson(Map<String, dynamic> json) => _$DestinyEquipItemResultsFromJson(json);

	@JsonKey(name:'equipResults')
	List<DestinyEquipItemResult> equipResults;

	
	
	Map<String, dynamic> toJson() => _$DestinyEquipItemResultsToJson(this);
}