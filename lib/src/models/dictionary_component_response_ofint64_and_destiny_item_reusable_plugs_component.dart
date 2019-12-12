import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_reusable_plugs_component.dart';

part 'dictionary_component_response_ofint64_and_destiny_item_reusable_plugs_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent{
	
	DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent();

	factory DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemReusablePlugsComponent> data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponentToJson(this);
}