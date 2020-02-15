import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_objectives_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_item_objectives_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemObjectivesComponent{
	
	SingleComponentResponseOfDestinyItemObjectivesComponent();

	factory SingleComponentResponseOfDestinyItemObjectivesComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$SingleComponentResponseOfDestinyItemObjectivesComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Items can have objectives and progression. When you request this block, you will obtain information about any Objectives and progression tied to this item.
	@JsonKey(name:'data')
	DestinyItemObjectivesComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemObjectivesComponentToJson(this);
}