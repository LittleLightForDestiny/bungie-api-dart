import 'destiny_kiosks_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_kiosks_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyKiosksComponent {

	/// A Kiosk is a Vendor (DestinyVendorDefinition) that sells items based on whether you have already acquired that item before.
	/// This component returns information about what Kiosk items are available to you on a *Profile* level. It is theoretically possible for Kiosks to have items gated by specific Character as well. If you ever have those, you will find them on the individual character&#39;s DestinyCharacterKiosksComponent.
	/// Note that, because this component returns vendorItemIndexes (that is to say, indexes into the Kiosk Vendor&#39;s itemList property), these results are necessarily content version dependent. Make sure that you have the latest version of the content manifest databases before using this data.
	@JsonKey(name:'data')
	DestinyKiosksComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyKiosksComponent();

	factory SingleComponentResponseOfDestinyKiosksComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyKiosksComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyKiosksComponentToJson(this);
}
