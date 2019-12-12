import 'package:json_annotation/json_annotation.dart';


part 'destiny_socket_type_scalar_material_requirement_entry.g.dart';

@JsonSerializable()
class DestinySocketTypeScalarMaterialRequirementEntry{
	
	DestinySocketTypeScalarMaterialRequirementEntry();

	factory DestinySocketTypeScalarMaterialRequirementEntry.fromJson(Map<String, dynamic> json) => _$DestinySocketTypeScalarMaterialRequirementEntryFromJson(json);

	@JsonKey(name:'currencyItemHash')
	int currencyItemHash;
	@JsonKey(name:'scalarValue')
	int scalarValue;

	
	
	Map<String, dynamic> toJson() => _$DestinySocketTypeScalarMaterialRequirementEntryToJson(this);
}