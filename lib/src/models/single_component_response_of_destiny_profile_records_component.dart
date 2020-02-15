import 'package:json_annotation/json_annotation.dart';

import 'destiny_profile_records_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_profile_records_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyProfileRecordsComponent{
	
	SingleComponentResponseOfDestinyProfileRecordsComponent();

	factory SingleComponentResponseOfDestinyProfileRecordsComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$SingleComponentResponseOfDestinyProfileRecordsComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'data')
	DestinyProfileRecordsComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyProfileRecordsComponentToJson(this);
}