import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_position_definition.g.dart';

@JsonSerializable()
class DestinyPositionDefinition{	
	DestinyPositionDefinition();

	
	@JsonKey(name:'x')
	int? x;
	
	@JsonKey(name:'y')
	int? y;
	
	@JsonKey(name:'z')
	int? z;

	factory DestinyPositionDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyPositionDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPositionDefinitionToJson(this);

	static Future<DestinyPositionDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPositionDefinition>((json)=>DestinyPositionDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}