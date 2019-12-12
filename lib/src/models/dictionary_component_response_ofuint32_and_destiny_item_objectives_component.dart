import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_objectives_component.dart';

part 'dictionary_component_response_ofuint32_and_destiny_item_objectives_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent{
	
	DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemObjectivesComponent> data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponentToJson(this);
}