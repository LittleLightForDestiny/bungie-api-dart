import 'package:json_annotation/json_annotation.dart';


part 'destiny_vendor_item_socket_override.g.dart';

/// The information for how the vendor purchase should override a given socket with custom plug data.
@JsonSerializable()
class DestinyVendorItemSocketOverride{	
	DestinyVendorItemSocketOverride();

	factory DestinyVendorItemSocketOverride.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorItemSocketOverrideFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorItemSocketOverrideToJson(this);
	
	/// If this is populated, the socket will be overridden with a specific plug.
	/// If this isn't populated, it's being overridden by something more complicated that is only known by the Game Server and God, which means we can't tell you in advance what it'll be.
	@JsonKey(name:'singleItemHash')
	int? singleItemHash;
	
	/// If this is greater than -1, the number of randomized plugs on this socket will be set to this quantity instead of whatever it's set to by default.
	@JsonKey(name:'randomizedOptionsCount')
	int? randomizedOptionsCount;
	
	/// This appears to be used to select which socket ultimately gets the override defined here.
	@JsonKey(name:'socketTypeHash')
	int? socketTypeHash;
}