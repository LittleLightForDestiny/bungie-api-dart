import 'destiny_kiosks_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofint64_and_destiny_kiosks_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyKiosksComponent {

	@JsonKey(name:'data')
	Map<String, DestinyKiosksComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyKiosksComponent();

	factory DictionaryComponentResponseOfint64AndDestinyKiosksComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyKiosksComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyKiosksComponentToJson(this);
}
