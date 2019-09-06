
import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_category_overlay_definition.g.dart';

/// The details of an overlay prompt to show to a user. They are all fairly self-explanatory localized strings that can be shown.
@JsonSerializable()
class DestinyVendorCategoryOverlayDefinition {

	@JsonKey(name:'choiceDescription')
	String choiceDescription;

	@JsonKey(name:'description')
	String description;

	@JsonKey(name:'icon')
	String icon;

	@JsonKey(name:'title')
	String title;

	/// If this overlay has a currency item that it features, this is said featured item.
	@JsonKey(name:'currencyItemHash')
	int currencyItemHash;
	DestinyVendorCategoryOverlayDefinition();

	factory DestinyVendorCategoryOverlayDefinition.fromJson(Map<String, dynamic> json) => _$DestinyVendorCategoryOverlayDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorCategoryOverlayDefinitionToJson(this);
}
