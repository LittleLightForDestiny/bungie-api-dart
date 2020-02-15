import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_item_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemComponent{
	
	SingleComponentResponseOfDestinyItemComponent();

	factory SingleComponentResponseOfDestinyItemComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$SingleComponentResponseOfDestinyItemComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The base item component, filled with properties that are generally useful to know in any item request or that don't feel worthwhile to put in their own component.
	@JsonKey(name:'data')
	DestinyItemComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemComponentToJson(this);
}