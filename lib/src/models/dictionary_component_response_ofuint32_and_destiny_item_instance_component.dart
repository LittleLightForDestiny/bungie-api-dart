import 'destiny_item_instance_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofuint32_and_destiny_item_instance_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent {

	@JsonKey(name:'data')
	Map<String, DestinyItemInstanceComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponentToJson(this);
}
