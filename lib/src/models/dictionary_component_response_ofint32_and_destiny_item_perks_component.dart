import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_perks_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint32_and_destiny_item_perks_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyItemPerksComponent{
	
	DictionaryComponentResponseOfint32AndDestinyItemPerksComponent();

	factory DictionaryComponentResponseOfint32AndDestinyItemPerksComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DictionaryComponentResponseOfint32AndDestinyItemPerksComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'data')
	Map<String, DestinyItemPerksComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyItemPerksComponentToJson(this);
}