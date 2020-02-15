import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_render_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_destiny_item_render_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent{
	
	DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DictionaryComponentResponseOfuint32AndDestinyItemRenderComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'data')
	Map<String, DestinyItemRenderComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemRenderComponentToJson(this);
}