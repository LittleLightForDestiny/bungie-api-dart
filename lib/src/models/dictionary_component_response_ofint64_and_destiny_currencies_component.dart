import 'destiny_currencies_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofint64_and_destiny_currencies_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent {

	@JsonKey(name:'data')
	Map<String, DestinyCurrenciesComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent();

	factory DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint64AndDestinyCurrenciesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyCurrenciesComponentToJson(this);
}
