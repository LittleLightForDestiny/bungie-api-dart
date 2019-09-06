import 'destiny_progression.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_component.g.dart';

/// This component contains essential&#x2F;summary information about the vendor.
@JsonSerializable()
class DestinyVendorComponent {

	/// If True, you can purchase from the Vendor.
	/// Theoretically, Vendors can be restricted from selling items. In practice, none do that (yet?).
	@JsonKey(name:'canPurchase')
	bool canPurchase;

	/// If the Vendor has a related Reputation, this is the Progression data that represents the character&#39;s Reputation level with this Vendor.
	@JsonKey(name:'progression')
	DestinyProgression progression;

	/// An index into the vendor definition&#39;s &quot;locations&quot; property array, indicating which location they are at currently. If -1, then the vendor has no known location (and you may choose not to show them in your UI as a result. I mean, it&#39;s your bag honey)
	@JsonKey(name:'vendorLocationIndex')
	int vendorLocationIndex;

	/// If this vendor has a seasonal rank, this will be the calculated value of that rank. How nice is that? I mean, that&#39;s pretty sweeet. It&#39;s a whole 32 bit integer.
	@JsonKey(name:'seasonalRank')
	int seasonalRank;

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
	DestinyVendorComponent();

	factory DestinyVendorComponent.fromJson(Map<String, dynamic> json) => _$DestinyVendorComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorComponentToJson(this);
}
