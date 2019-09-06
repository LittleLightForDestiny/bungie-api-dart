import 'destiny_vendor_requirement_display_entry_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_display_properties_definition.g.dart';

@JsonSerializable()
class DestinyVendorDisplayPropertiesDefinition {

	/// I regret calling this a &quot;large icon&quot;. It&#39;s more like a medium-sized image with a picture of the vendor&#39;s mug on it, trying their best to look cool. Not what one would call an icon.
	@JsonKey(name:'largeIcon')
	String largeIcon;

	@JsonKey(name:'subtitle')
	String subtitle;

	/// If we replaced the icon with something more glitzy, this is the original icon that the vendor had according to the game&#39;s content. It may be more lame and&#x2F;or have less razzle-dazzle. But who am I to tell you which icon to use.
	@JsonKey(name:'originalIcon')
	String originalIcon;

	/// Vendors, in addition to expected display property data, may also show some &quot;common requirements&quot; as statically defined definition data. This might be when a vendor accepts a single type of currency, or when the currency is unique to the vendor and the designers wanted to show that currency when you interact with the vendor.
	@JsonKey(name:'requirementsDisplay')
	List<DestinyVendorRequirementDisplayEntryDefinition> requirementsDisplay;

	/// This is the icon used in parts of the game UI such as the vendor&#39;s waypoint.
	@JsonKey(name:'smallTransparentIcon')
	String smallTransparentIcon;

	/// This is the icon used in the map overview, when the vendor is located on the map.
	@JsonKey(name:'mapIcon')
	String mapIcon;

	/// This is apparently the &quot;Watermark&quot;. I am not certain offhand where this is actually used in the Game UI, but some people may find it useful.
	@JsonKey(name:'largeTransparentIcon')
	String largeTransparentIcon;

	@JsonKey(name:'description')
	String description;

	@JsonKey(name:'name')
	String name;

	/// Note that &quot;icon&quot; is sometimes misleading, and should be interpreted in the context of the entity. For instance, in Destiny 1 the DestinyRecordBookDefinition&#39;s icon was a big picture of a book.
	/// But usually, it will be a small square image that you can use as... well, an icon.
	/// They are currently represented as 96px x 96px images.
	@JsonKey(name:'icon')
	String icon;

	@JsonKey(name:'hasIcon')
	bool hasIcon;
	DestinyVendorDisplayPropertiesDefinition();

	factory DestinyVendorDisplayPropertiesDefinition.fromJson(Map<String, dynamic> json) => _$DestinyVendorDisplayPropertiesDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorDisplayPropertiesDefinitionToJson(this);
}
