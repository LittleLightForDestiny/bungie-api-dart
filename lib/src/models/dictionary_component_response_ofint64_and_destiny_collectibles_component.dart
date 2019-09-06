import 'destiny_collectibles_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofint64_and_destiny_collectibles_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent {

	@JsonKey(name:'data')
	Map<String, DestinyCollectiblesComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent();

	factory DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyCollectiblesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyCollectiblesComponentToJson(this);
}
