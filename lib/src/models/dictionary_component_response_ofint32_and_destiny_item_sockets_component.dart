import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_sockets_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint32_and_destiny_item_sockets_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent{
	
	DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent();

	factory DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint32AndDestinyItemSocketsComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemSocketsComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyItemSocketsComponentToJson(this);
}