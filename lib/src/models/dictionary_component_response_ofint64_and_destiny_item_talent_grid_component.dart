import 'destiny_item_talent_grid_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofint64_and_destiny_item_talent_grid_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent {

	@JsonKey(name:'data')
	Map<String, DestinyItemTalentGridComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent();

	factory DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponentToJson(this);
}
