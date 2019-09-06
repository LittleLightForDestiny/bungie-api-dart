import 'destiny_item_plug_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofuint32_and_destiny_item_plug_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent {

	@JsonKey(name:'data')
	Map<String, DestinyItemPlugComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfuint32AndDestinyItemPlugComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemPlugComponentToJson(this);
}
