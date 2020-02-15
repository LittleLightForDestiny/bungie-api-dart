import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_stats_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_destiny_item_stats_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent{
	
	DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DictionaryComponentResponseOfuint32AndDestinyItemStatsComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'data')
	Map<String, DestinyItemStatsComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemStatsComponentToJson(this);
}