import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_socket_type_scalar_material_requirement_entry.g.dart';

@JsonSerializable()
class DestinySocketTypeScalarMaterialRequirementEntry{	
	DestinySocketTypeScalarMaterialRequirementEntry();

	
	@JsonKey(name:'currencyItemHash')
	int? currencyItemHash;
	
	@JsonKey(name:'scalarValue')
	int? scalarValue;

	factory DestinySocketTypeScalarMaterialRequirementEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinySocketTypeScalarMaterialRequirementEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinySocketTypeScalarMaterialRequirementEntryToJson(this);

	static Future<DestinySocketTypeScalarMaterialRequirementEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinySocketTypeScalarMaterialRequirementEntry>((json)=>DestinySocketTypeScalarMaterialRequirementEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}