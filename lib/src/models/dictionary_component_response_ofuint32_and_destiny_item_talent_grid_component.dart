import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_talent_grid_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_destiny_item_talent_grid_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent{
	
	DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'data')
	Map<String, DestinyItemTalentGridComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponentToJson(this);
}