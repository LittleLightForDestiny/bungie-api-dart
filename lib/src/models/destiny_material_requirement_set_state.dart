import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_material_requirement_state.dart';

part 'destiny_material_requirement_set_state.g.dart';

@JsonSerializable()
class DestinyMaterialRequirementSetState{	
	DestinyMaterialRequirementSetState();

	
	/// The hash identifier of the material requirement set. Use it to look up the DestinyMaterialRequirementSetDefinition.
	@JsonKey(name:'materialRequirementSetHash')
	int? materialRequirementSetHash;
	
	/// The dynamic state values for individual material requirements.
	@JsonKey(name:'materialRequirementStates')
	List<DestinyMaterialRequirementState>? materialRequirementStates;

	factory DestinyMaterialRequirementSetState.fromJson(Map<String, dynamic> json) {
		return _$DestinyMaterialRequirementSetStateFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyMaterialRequirementSetStateToJson(this);

	static Future<DestinyMaterialRequirementSetState> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyMaterialRequirementSetState>((json)=>DestinyMaterialRequirementSetState.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}