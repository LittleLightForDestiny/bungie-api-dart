import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_energy_type.dart';

part 'destiny_energy_capacity_entry.g.dart';

/// Items can have Energy Capacity, and plugs can provide that capacity such as on a piece of Armor in Armor 2.0. This is how much &quot;Energy&quot; can be spent on activating plugs for this item.
@JsonSerializable()
class DestinyEnergyCapacityEntry{
	
	DestinyEnergyCapacityEntry();

	factory DestinyEnergyCapacityEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyEnergyCapacityEntryFromJson(json);
	}

	/// How much energy capacity this plug provides.
	@JsonKey(name:'capacityValue')
	int? capacityValue;
	/// Energy provided by a plug is always of a specific type - this is the hash identifier for the energy type for which it provides Capacity.
	@JsonKey(name:'energyTypeHash')
	int? energyTypeHash;
	/// The Energy Type for this energy capacity, in enum form for easy use.
	@JsonKey(name:'energyType',unknownEnumValue:DestinyEnergyType.ProtectedInvalidEnumValue)
	DestinyEnergyType? energyType;

	
	
	Map<String, dynamic> toJson() => _$DestinyEnergyCapacityEntryToJson(this);
}