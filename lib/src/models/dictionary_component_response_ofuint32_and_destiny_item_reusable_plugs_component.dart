import 'destiny_item_reusable_plugs_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofuint32_and_destiny_item_reusable_plugs_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponent{
	
	@JsonKey(name:'data')
	Map<String, DestinyItemReusablePlugsComponent> data;
	
	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponentToJson(this);
}