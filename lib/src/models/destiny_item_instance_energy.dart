import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_energy_type.dart';

part 'destiny_item_instance_energy.g.dart';

@JsonSerializable()
class DestinyItemInstanceEnergy{
	
	DestinyItemInstanceEnergy();

	factory DestinyItemInstanceEnergy.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyItemInstanceEnergyFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The type of energy for this item. Plugs that require Energy can only be inserted if they have the "Any" Energy Type or the matching energy type of this item. This is a reference to the DestinyEnergyTypeDefinition for the energy type, where you can find extended info about it.
	@JsonKey(name:'energyTypeHash')
	int energyTypeHash;
	/// This is the enum version of the Energy Type value, for convenience.
	@JsonKey(name:'energyType',unknownEnumValue:DestinyEnergyType.ProtectedInvalidEnumValue)
	DestinyEnergyType energyType;
	/// The total capacity of Energy that the item currently has, regardless of if it is currently being used.
	@JsonKey(name:'energyCapacity')
	int energyCapacity;
	/// The amount of Energy currently in use by inserted plugs.
	@JsonKey(name:'energyUsed')
	int energyUsed;
	/// The amount of energy still available for inserting new plugs.
	@JsonKey(name:'energyUnused')
	int energyUnused;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemInstanceEnergyToJson(this);
}