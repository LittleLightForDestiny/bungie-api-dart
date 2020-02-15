import 'package:json_annotation/json_annotation.dart';


part 'destiny_public_vendor_component.g.dart';

/// This component contains essential&#x2F;summary information about the vendor from the perspective of a character-agnostic view.
@JsonSerializable()
class DestinyPublicVendorComponent{
	
	DestinyPublicVendorComponent();

	factory DestinyPublicVendorComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyPublicVendorComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The unique identifier for the vendor. Use it to look up their DestinyVendorDefinition.
	@JsonKey(name:'vendorHash')
	int vendorHash;
	/// The date when this vendor's inventory will next rotate/refresh.
	/// Note that this is distinct from the date ranges that the vendor is visible/available in-game: this field indicates the specific time when the vendor's available items refresh and rotate, regardless of whether the vendor is actually available at that time. Unfortunately, these two values may be (and are, for the case of important vendors like Xur) different.
	/// Issue https://github.com/Bungie-net/api/issues/353 is tracking a fix to start providing visibility date ranges where possible in addition to this refresh date, so that all important dates for vendors are available for use.
	@JsonKey(name:'nextRefreshDate')
	String nextRefreshDate;
	/// If True, the Vendor is currently accessible. 
	/// If False, they may not actually be visible in the world at the moment.
	@JsonKey(name:'enabled')
	bool enabled;

	
	
	Map<String, dynamic> toJson() => _$DestinyPublicVendorComponentToJson(this);
}