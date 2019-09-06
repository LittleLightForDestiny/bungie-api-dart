import 'destiny_presentation_nodes_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofint64_and_destiny_presentation_nodes_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent {

	@JsonKey(name:'data')
	Map<String, DestinyPresentationNodesComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent();

	factory DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponentToJson(this);
}
