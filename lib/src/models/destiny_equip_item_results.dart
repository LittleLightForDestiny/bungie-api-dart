import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_equip_item_result.dart';

part 'destiny_equip_item_results.g.dart';

/// The results of a bulk Equipping operation performed through the Destiny API.
@JsonSerializable()
class DestinyEquipItemResults{	
	DestinyEquipItemResults();

	
	@JsonKey(name:'equipResults')
	List<DestinyEquipItemResult>? equipResults;

	factory DestinyEquipItemResults.fromJson(Map<String, dynamic> json) {
		return _$DestinyEquipItemResultsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyEquipItemResultsToJson(this);

	static Future<DestinyEquipItemResults> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyEquipItemResults>((json)=>DestinyEquipItemResults.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}