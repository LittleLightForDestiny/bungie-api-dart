import 'package:json_annotation/json_annotation.dart';


part 'destiny_icon_sequence_definition.g.dart';

@JsonSerializable()
class DestinyIconSequenceDefinition{
	
	DestinyIconSequenceDefinition();

	factory DestinyIconSequenceDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyIconSequenceDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'frames')
	List<String> frames;

	
	
	Map<String, dynamic> toJson() => _$DestinyIconSequenceDefinitionToJson(this);
}