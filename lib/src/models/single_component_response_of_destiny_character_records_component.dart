import 'package:json_annotation/json_annotation.dart';

import 'destiny_character_records_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_character_records_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCharacterRecordsComponent{	
	SingleComponentResponseOfDestinyCharacterRecordsComponent();

	factory SingleComponentResponseOfDestinyCharacterRecordsComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyCharacterRecordsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCharacterRecordsComponentToJson(this);
	
	@JsonKey(name:'data')
	DestinyCharacterRecordsComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;
}