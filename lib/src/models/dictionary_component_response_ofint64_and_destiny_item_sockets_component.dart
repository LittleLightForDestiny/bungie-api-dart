import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_sockets_component.dart';

part 'dictionary_component_response_ofint64_and_destiny_item_sockets_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent{
	
	DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent();

	factory DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyItemSocketsComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemSocketsComponent> data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyItemSocketsComponentToJson(this);
}