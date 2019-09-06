import 'destiny_kiosk_item.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_kiosks_component.g.dart';

/// A Kiosk is a Vendor (DestinyVendorDefinition) that sells items based on whether you have already acquired that item before.
/// This component returns information about what Kiosk items are available to you on a *Profile* level. It is theoretically possible for Kiosks to have items gated by specific Character as well. If you ever have those, you will find them on the individual character&#39;s DestinyCharacterKiosksComponent.
/// Note that, because this component returns vendorItemIndexes (that is to say, indexes into the Kiosk Vendor&#39;s itemList property), these results are necessarily content version dependent. Make sure that you have the latest version of the content manifest databases before using this data.
@JsonSerializable()
class DestinyKiosksComponent {

	/// A dictionary keyed by the Kiosk Vendor&#39;s hash identifier (use it to look up the DestinyVendorDefinition for the relevant kiosk vendor), and whose value is a list of all the items that the user can &quot;see&quot; in the Kiosk, and any other interesting metadata.
	@JsonKey(name:'kioskItems')
	Map<String, List<DestinyKioskItem>> kioskItems;
	DestinyKiosksComponent();

	factory DestinyKiosksComponent.fromJson(Map<String, dynamic> json) => _$DestinyKiosksComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyKiosksComponentToJson(this);
}
