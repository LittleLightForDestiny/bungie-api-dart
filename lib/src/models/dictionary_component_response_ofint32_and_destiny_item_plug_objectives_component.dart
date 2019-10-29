import 'destiny_item_plug_objectives_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofint32_and_destiny_item_plug_objectives_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent{
	
	@JsonKey(name:'data')
	Map<String, DestinyItemPlugObjectivesComponent> data;
	
	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent();

	factory DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponentToJson(this);
}