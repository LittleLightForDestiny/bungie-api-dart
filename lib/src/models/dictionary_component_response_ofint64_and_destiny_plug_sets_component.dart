import 'destiny_plug_sets_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofint64_and_destiny_plug_sets_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent {

	@JsonKey(name:'data')
	Map<String, DestinyPlugSetsComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent();

	factory DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyPlugSetsComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyPlugSetsComponentToJson(this);
}
