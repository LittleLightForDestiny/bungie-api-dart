import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_stats_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint32_and_destiny_item_stats_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyItemStatsComponent{
	
	DictionaryComponentResponseOfint32AndDestinyItemStatsComponent();

	factory DictionaryComponentResponseOfint32AndDestinyItemStatsComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DictionaryComponentResponseOfint32AndDestinyItemStatsComponentFromJson(json);
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

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyItemStatsComponentToJson(this);
}