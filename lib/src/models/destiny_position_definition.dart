import 'package:json_annotation/json_annotation.dart';


part 'destiny_position_definition.g.dart';

@JsonSerializable()
class DestinyPositionDefinition{	
	DestinyPositionDefinition();

	factory DestinyPositionDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyPositionDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPositionDefinitionToJson(this);
	
	@JsonKey(name:'x')
	int? x;
	
	@JsonKey(name:'y')
	int? y;
	
	@JsonKey(name:'z')
	int? z;
}