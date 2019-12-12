import 'package:json_annotation/json_annotation.dart';

import 'destiny_currencies_component.dart';

part 'single_component_response_of_destiny_currencies_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCurrenciesComponent{
	
	SingleComponentResponseOfDestinyCurrenciesComponent();

	factory SingleComponentResponseOfDestinyCurrenciesComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyCurrenciesComponentFromJson(json);

	/// This component provides a quick lookup of every item the requested character has and how much of that item they have.
	/// Requesting this component will allow you to circumvent manually putting together the list of which currencies you have for the purpose of testing currency requirements on an item being purchased, or operations that have costs.
	/// You *could* figure this out yourself by doing a GetCharacter or GetProfile request and forming your own lookup table, but that is inconvenient enough that this feels like a worthwhile (and optional) redundency. Don&#39;t bother requesting it if you have already created your own lookup from prior GetCharacter&#x2F;GetProfile calls.
	@JsonKey(name:'data')
	DestinyCurrenciesComponent data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCurrenciesComponentToJson(this);
}