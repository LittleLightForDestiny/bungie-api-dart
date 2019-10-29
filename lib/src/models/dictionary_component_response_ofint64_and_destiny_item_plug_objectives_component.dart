import 'destiny_item_plug_objectives_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofint64_and_destiny_item_plug_objectives_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponent{
	
	@JsonKey(name:'data')
	Map<String, DestinyItemPlugObjectivesComponent> data;
	
	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponent();

	factory DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponentToJson(this);
}