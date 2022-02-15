import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_plug_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_destiny_item_plug_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent{	
	DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfuint32AndDestinyItemPlugComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemPlugComponentToJson(this);
	
	@JsonKey(name:'data')
	Map<String, DestinyItemPlugComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;
}