import 'destiny_item_instance_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofint32_and_destiny_item_instance_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent {

	@JsonKey(name:'data')
	Map<String, DestinyItemInstanceComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent();

	factory DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint32AndDestinyItemInstanceComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyItemInstanceComponentToJson(this);
}
