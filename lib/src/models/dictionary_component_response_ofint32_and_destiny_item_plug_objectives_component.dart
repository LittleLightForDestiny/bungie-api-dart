import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_plug_objectives_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint32_and_destiny_item_plug_objectives_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent{
	
	DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent();

	factory DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'data')
	Map<String, DestinyItemPlugObjectivesComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponentToJson(this);
}