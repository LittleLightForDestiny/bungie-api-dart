import 'package:json_annotation/json_annotation.dart';

import 'destiny_profile_collectibles_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_profile_collectibles_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyProfileCollectiblesComponent{
	
	SingleComponentResponseOfDestinyProfileCollectiblesComponent();

	factory SingleComponentResponseOfDestinyProfileCollectiblesComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$SingleComponentResponseOfDestinyProfileCollectiblesComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'data')
	DestinyProfileCollectiblesComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyProfileCollectiblesComponentToJson(this);
}