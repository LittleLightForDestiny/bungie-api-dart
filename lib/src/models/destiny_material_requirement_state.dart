import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_material_requirement_state.g.dart';

@JsonSerializable()
class DestinyMaterialRequirementState{	
	DestinyMaterialRequirementState();

	
	/// The hash identifier of the material required. Use it to look up the material's DestinyInventoryItemDefinition.
	@JsonKey(name:'itemHash')
	int? itemHash;
	
	/// The amount of the material required.
	@JsonKey(name:'count')
	int? count;
	
	/// A value for the amount of a (possibly virtual) material on some scope. For example: Dawning cookie baking material requirements.
	@JsonKey(name:'stackSize')
	int? stackSize;

	factory DestinyMaterialRequirementState.fromJson(Map<String, dynamic> json) {
		return _$DestinyMaterialRequirementStateFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMaterialRequirementStateToJson(this);

	static Future<DestinyMaterialRequirementState> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMaterialRequirementState>((json)=>DestinyMaterialRequirementState.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}