import 'destiny_item_plug_objectives_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofuint32_and_destiny_item_plug_objectives_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemPlugObjectivesComponent{
	
	@JsonKey(name:'data')
	Map<String, DestinyItemPlugObjectivesComponent> data;
	
	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemPlugObjectivesComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemPlugObjectivesComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfuint32AndDestinyItemPlugObjectivesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemPlugObjectivesComponentToJson(this);
}