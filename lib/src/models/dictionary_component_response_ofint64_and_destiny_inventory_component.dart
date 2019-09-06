import 'destiny_inventory_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofint64_and_destiny_inventory_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyInventoryComponent {

	@JsonKey(name:'data')
	Map<String, DestinyInventoryComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyInventoryComponent();

	factory DictionaryComponentResponseOfint64AndDestinyInventoryComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyInventoryComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyInventoryComponentToJson(this);
}
