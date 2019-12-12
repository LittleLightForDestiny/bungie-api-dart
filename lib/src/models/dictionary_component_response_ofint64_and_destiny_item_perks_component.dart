import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_perks_component.dart';

part 'dictionary_component_response_ofint64_and_destiny_item_perks_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyItemPerksComponent{
	
	DictionaryComponentResponseOfint64AndDestinyItemPerksComponent();

	factory DictionaryComponentResponseOfint64AndDestinyItemPerksComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyItemPerksComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyItemPerksComponent> data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyItemPerksComponentToJson(this);
}