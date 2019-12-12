import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_render_component.dart';

part 'dictionary_component_response_ofint32_and_destiny_item_render_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyItemRenderComponent{
	
	DictionaryComponentResponseOfint32AndDestinyItemRenderComponent();

	factory DictionaryComponentResponseOfint32AndDestinyItemRenderComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint32AndDestinyItemRenderComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemRenderComponent> data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyItemRenderComponentToJson(this);
}