
import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_location_definition.g.dart';

/// These definitions represent vendors&#39; locations and relevant display information at different times in the game.
@JsonSerializable()
class DestinyVendorLocationDefinition {

	/// The hash identifier for a Destination at which this vendor may be located. Each destination where a Vendor may exist will only ever have a single entry.
	@JsonKey(name:'destinationHash')
	int destinationHash;

	/// The relative path to the background image representing this Vendor at this location, for use in a banner.
	@JsonKey(name:'backgroundImagePath')
	String backgroundImagePath;
	DestinyVendorLocationDefinition();

	factory DestinyVendorLocationDefinition.fromJson(Map<String, dynamic> json) => _$DestinyVendorLocationDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorLocationDefinitionToJson(this);
}
