import 'destiny_item_objectives_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofint32_and_destiny_item_objectives_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent {

	@JsonKey(name:'data')
	Map<String, DestinyItemObjectivesComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent();

	factory DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponentToJson(this);
}
