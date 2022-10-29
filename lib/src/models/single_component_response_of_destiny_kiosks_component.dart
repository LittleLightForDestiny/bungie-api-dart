import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_kiosks_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_kiosks_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyKiosksComponent{	
	SingleComponentResponseOfDestinyKiosksComponent();

	
	/// A Kiosk is a Vendor (DestinyVendorDefinition) that sells items based on whether you have already acquired that item before.
	/// This component returns information about what Kiosk items are available to you on a *Profile* level. It is theoretically possible for Kiosks to have items gated by specific Character as well. If you ever have those, you will find them on the individual character's DestinyCharacterKiosksComponent.
	/// Note that, because this component returns vendorItemIndexes (that is to say, indexes into the Kiosk Vendor's itemList property), these results are necessarily content version dependent. Make sure that you have the latest version of the content manifest databases before using this data.
	@JsonKey(name:'data')
	DestinyKiosksComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyKiosksComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyKiosksComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyKiosksComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyKiosksComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyKiosksComponent>((json)=>SingleComponentResponseOfDestinyKiosksComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}