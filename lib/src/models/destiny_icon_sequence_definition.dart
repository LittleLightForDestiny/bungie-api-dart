import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_icon_sequence_definition.g.dart';

@JsonSerializable()
class DestinyIconSequenceDefinition{	
	DestinyIconSequenceDefinition();

	
	@JsonKey(name:'frames')
	List<String>? frames;

	factory DestinyIconSequenceDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyIconSequenceDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyIconSequenceDefinitionToJson(this);

	static Future<DestinyIconSequenceDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyIconSequenceDefinition>((json)=>DestinyIconSequenceDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}