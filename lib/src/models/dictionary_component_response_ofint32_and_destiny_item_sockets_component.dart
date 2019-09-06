import 'destiny_item_sockets_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofint32_and_destiny_item_sockets_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent {

	@JsonKey(name:'data')
	Map<String, DestinyItemSocketsComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent();

	factory DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint32AndDestinyItemSocketsComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyItemSocketsComponentToJson(this);
}
