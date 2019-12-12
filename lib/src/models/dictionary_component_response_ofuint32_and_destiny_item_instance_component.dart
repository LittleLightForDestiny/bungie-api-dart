import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_instance_component.dart';

part 'dictionary_component_response_ofuint32_and_destiny_item_instance_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent{
	
	DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemInstanceComponent> data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponentToJson(this);
}