import 'package:json_annotation/json_annotation.dart';

import 'destiny_presentation_nodes_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_presentation_nodes_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent{
	
	DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent();

	factory DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyPresentationNodesComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponentToJson(this);
}