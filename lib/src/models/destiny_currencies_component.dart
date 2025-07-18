import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_material_requirement_set_state.dart';

part 'destiny_currencies_component.g.dart';

/// This component provides a quick lookup of every item the requested character has and how much of that item they have.
/// Requesting this component will allow you to circumvent manually putting together the list of which currencies you have for the purpose of testing currency requirements on an item being purchased, or operations that have costs.
/// You *could* figure this out yourself by doing a GetCharacter or GetProfile request and forming your own lookup table, but that is inconvenient enough that this feels like a worthwhile (and optional) redundancy. Don&#39;t bother requesting it if you have already created your own lookup from prior GetCharacter&#x2F;GetProfile calls.
@JsonSerializable()
class DestinyCurrenciesComponent{	
	DestinyCurrenciesComponent();

	
	/// A dictionary - keyed by the item's hash identifier (DestinyInventoryItemDefinition), and whose value is the amount of that item you have across all available inventory buckets for purchasing.
	/// This allows you to see whether the requesting character can afford any given purchase/action without having to re-create this list itself.
	@JsonKey(name:'itemQuantities')
	Map<String, int>? itemQuantities;
	
	/// A map of material requirement hashes and their status information.
	@JsonKey(name:'materialRequirementSetStates')
	Map<String, DestinyMaterialRequirementSetState>? materialRequirementSetStates;

	factory DestinyCurrenciesComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyCurrenciesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCurrenciesComponentToJson(this);

	static Future<DestinyCurrenciesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyCurrenciesComponent>((json)=>DestinyCurrenciesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}