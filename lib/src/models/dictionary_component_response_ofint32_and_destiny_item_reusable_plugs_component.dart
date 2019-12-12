import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_reusable_plugs_component.dart';

part 'dictionary_component_response_ofint32_and_destiny_item_reusable_plugs_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponent{
	
	DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponent();

	factory DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemReusablePlugsComponent> data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponentToJson(this);
}