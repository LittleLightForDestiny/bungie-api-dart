import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_sockets_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_destiny_item_sockets_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent{
	
	DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'data')
	Map<String, DestinyItemSocketsComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponentToJson(this);
}