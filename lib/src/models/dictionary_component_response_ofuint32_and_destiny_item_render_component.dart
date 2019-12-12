import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_render_component.dart';

part 'dictionary_component_response_ofuint32_and_destiny_item_render_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent{
	
	DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfuint32AndDestinyItemRenderComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemRenderComponent> data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemRenderComponentToJson(this);
}