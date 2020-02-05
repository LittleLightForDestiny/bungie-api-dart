import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_objectives_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_item_objectives_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent{
	
	DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent();

	factory DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemObjectivesComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponentToJson(this);
}