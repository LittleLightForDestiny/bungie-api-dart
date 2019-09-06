import 'destiny_item_perks_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofuint32_and_destiny_item_perks_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent {

	@JsonKey(name:'data')
	Map<String, DestinyItemPerksComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfuint32AndDestinyItemPerksComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemPerksComponentToJson(this);
}
