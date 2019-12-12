import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_sockets_component.dart';

part 'dictionary_component_response_ofuint32_and_destiny_item_sockets_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent{
	
	DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemSocketsComponent> data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponentToJson(this);
}