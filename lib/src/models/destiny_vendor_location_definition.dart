import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_vendor_location_definition.g.dart';

/// These definitions represent vendors&#39; locations and relevant display information at different times in the game.
@JsonSerializable()
class DestinyVendorLocationDefinition{	
	DestinyVendorLocationDefinition();

	
	/// The hash identifier for a Destination at which this vendor may be located. Each destination where a Vendor may exist will only ever have a single entry.
	@JsonKey(name:'destinationHash')
	int? destinationHash;
	
	/// The relative path to the background image representing this Vendor at this location, for use in a banner.
	@JsonKey(name:'backgroundImagePath')
	String? backgroundImagePath;

	factory DestinyVendorLocationDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorLocationDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorLocationDefinitionToJson(this);

	static Future<DestinyVendorLocationDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorLocationDefinition>((json)=>DestinyVendorLocationDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}