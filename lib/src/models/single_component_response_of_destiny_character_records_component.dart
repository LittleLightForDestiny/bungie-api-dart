import 'destiny_character_records_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_character_records_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCharacterRecordsComponent {

	@JsonKey(name:'data')
	DestinyCharacterRecordsComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyCharacterRecordsComponent();

	factory SingleComponentResponseOfDestinyCharacterRecordsComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyCharacterRecordsComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCharacterRecordsComponentToJson(this);
}
