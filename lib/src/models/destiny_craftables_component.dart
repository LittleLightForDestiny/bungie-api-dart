import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_craftable_component.dart';

part 'destiny_craftables_component.g.dart';

@JsonSerializable()
class DestinyCraftablesComponent{	
	DestinyCraftablesComponent();

	
	/// A map of craftable item hashes to craftable item state components.
	@JsonKey(name:'craftables')
	Map<String, DestinyCraftableComponent>? craftables;
	
	/// The hash for the root presentation node definition of craftable item categories.
	@JsonKey(name:'craftingRootNodeHash')
	int? craftingRootNodeHash;

	factory DestinyCraftablesComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyCraftablesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyCraftablesComponentToJson(this);

	static Future<DestinyCraftablesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyCraftablesComponent>((json)=>DestinyCraftablesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}