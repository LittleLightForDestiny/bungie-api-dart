import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_energy_type.dart';

part 'destiny_energy_cost_entry.g.dart';

/// Some plugs cost Energy, which is a stat on the item that can be increased by other plugs (that, at least in Armor 2.0, have a &quot;masterworks-like&quot; mechanic for upgrading). If a plug has costs, the details of that cost are defined here.
@JsonSerializable()
class DestinyEnergyCostEntry{
	
	DestinyEnergyCostEntry();

	factory DestinyEnergyCostEntry.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyEnergyCostEntryFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The Energy cost for inserting this plug.
	@JsonKey(name:'energyCost')
	int energyCost;
	/// The type of energy that this plug costs, as a reference to the DestinyEnergyTypeDefinition of the energy type.
	@JsonKey(name:'energyTypeHash')
	int energyTypeHash;
	/// The type of energy that this plug costs, in enum form.
	@JsonKey(name:'energyType',unknownEnumValue:DestinyEnergyType.ProtectedInvalidEnumValue)
	DestinyEnergyType energyType;

	
	
	Map<String, dynamic> toJson() => _$DestinyEnergyCostEntryToJson(this);
}