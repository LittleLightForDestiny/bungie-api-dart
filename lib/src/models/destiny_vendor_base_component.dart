
import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_base_component.g.dart';

/// This component contains essential&#x2F;summary information about the vendor.
@JsonSerializable()
class DestinyVendorBaseComponent {

	/// The unique identifier for the vendor. Use it to look up their DestinyVendorDefinition.
	@JsonKey(name:'vendorHash')
	int vendorHash;

	/// The date when this vendor&#39;s inventory will next rotate&#x2F;refresh.
	/// Note that this is distinct from the date ranges that the vendor is visible&#x2F;available in-game: this field indicates the specific time when the vendor&#39;s available items refresh and rotate, regardless of whether the vendor is actually available at that time. Unfortunately, these two values may be (and are, for the case of important vendors like Xur) different.
	/// Issue https:&#x2F;&#x2F;github.com&#x2F;Bungie-net&#x2F;api&#x2F;issues&#x2F;353 is tracking a fix to start providing visibility date ranges where possible in addition to this refresh date, so that all important dates for vendors are available for use.
	@JsonKey(name:'nextRefreshDate')
	String nextRefreshDate;

	/// If True, the Vendor is currently accessible. 
	/// If False, they may not actually be visible in the world at the moment.
	@JsonKey(name:'enabled')
	bool enabled;
	DestinyVendorBaseComponent();

	factory DestinyVendorBaseComponent.fromJson(Map<String, dynamic> json) => _$DestinyVendorBaseComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorBaseComponentToJson(this);
}
