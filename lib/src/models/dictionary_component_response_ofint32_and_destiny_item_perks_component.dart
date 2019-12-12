import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_perks_component.dart';

part 'dictionary_component_response_ofint32_and_destiny_item_perks_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyItemPerksComponent{
	
	DictionaryComponentResponseOfint32AndDestinyItemPerksComponent();

	factory DictionaryComponentResponseOfint32AndDestinyItemPerksComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint32AndDestinyItemPerksComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemPerksComponent> data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyItemPerksComponentToJson(this);
}