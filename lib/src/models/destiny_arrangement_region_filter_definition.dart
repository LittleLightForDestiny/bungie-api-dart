import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_arrangement_region_filter_definition.g.dart';

@JsonSerializable()
class DestinyArrangementRegionFilterDefinition{	
	DestinyArrangementRegionFilterDefinition();

	
	@JsonKey(name:'artArrangementRegionHash')
	int? artArrangementRegionHash;
	
	@JsonKey(name:'artArrangementRegionIndex')
	int? artArrangementRegionIndex;
	
	@JsonKey(name:'statHash')
	int? statHash;
	
	@JsonKey(name:'arrangementIndexByStatValue')
	Map<String, int>? arrangementIndexByStatValue;

	factory DestinyArrangementRegionFilterDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyArrangementRegionFilterDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyArrangementRegionFilterDefinitionToJson(this);

	static Future<DestinyArrangementRegionFilterDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyArrangementRegionFilterDefinition>((json)=>DestinyArrangementRegionFilterDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}