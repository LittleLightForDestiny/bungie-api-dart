import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_objectives_component.dart';

part 'dictionary_component_response_ofint32_and_destiny_item_objectives_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent{
	
	DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent();

	factory DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemObjectivesComponent> data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponentToJson(this);
}