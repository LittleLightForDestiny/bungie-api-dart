import 'package:json_annotation/json_annotation.dart';

import 'destiny_character_records_component.dart';

part 'single_component_response_of_destiny_character_records_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCharacterRecordsComponent{
	
	SingleComponentResponseOfDestinyCharacterRecordsComponent();

	factory SingleComponentResponseOfDestinyCharacterRecordsComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyCharacterRecordsComponentFromJson(json);

	@JsonKey(name:'data')
	DestinyCharacterRecordsComponent data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCharacterRecordsComponentToJson(this);
}