import 'package:json_annotation/json_annotation.dart';


part 'destiny_material_requirement.g.dart';

/// Many actions relating to items require you to expend materials: - Activating a talent node - Inserting a plug into a socket The items will refer to material requirements by a materialRequirementsHash in these cases, and this is the definition for those requirements in terms of the item required, how much of it is required and other interesting info. This is one of the rare&#x2F;strange times where a single contract class is used both in definitions *and* in live data response contracts. I&#39;m not sure yet whether I regret that.
@JsonSerializable()
class DestinyMaterialRequirement{
	
	DestinyMaterialRequirement();

	factory DestinyMaterialRequirement.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyMaterialRequirementFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The hash identifier of the material required. Use it to look up the material's DestinyInventoryItemDefinition.
	@JsonKey(name:'itemHash')
	int itemHash;
	/// If True, the material will be removed from the character's inventory when the action is performed.
	@JsonKey(name:'deleteOnAction')
	bool deleteOnAction;
	/// The amount of the material required.
	@JsonKey(name:'count')
	int count;
	/// If True, this requirement is "silent": don't bother showing it in a material requirements display. I mean, I'm not your mom: I'm not going to tell you you *can't* show it. But we won't show it in our UI.
	@JsonKey(name:'omitFromRequirements')
	bool omitFromRequirements;

	
	
	Map<String, dynamic> toJson() => _$DestinyMaterialRequirementToJson(this);
}