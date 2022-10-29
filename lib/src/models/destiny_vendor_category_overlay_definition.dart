import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_vendor_category_overlay_definition.g.dart';

/// The details of an overlay prompt to show to a user. They are all fairly self-explanatory localized strings that can be shown.
@JsonSerializable()
class DestinyVendorCategoryOverlayDefinition{	
	DestinyVendorCategoryOverlayDefinition();

	
	@JsonKey(name:'choiceDescription')
	String? choiceDescription;
	
	@JsonKey(name:'description')
	String? description;
	
	@JsonKey(name:'icon')
	String? icon;
	
	@JsonKey(name:'title')
	String? title;
	
	/// If this overlay has a currency item that it features, this is said featured item.
	@JsonKey(name:'currencyItemHash')
	int? currencyItemHash;

	factory DestinyVendorCategoryOverlayDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorCategoryOverlayDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorCategoryOverlayDefinitionToJson(this);

	static Future<DestinyVendorCategoryOverlayDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorCategoryOverlayDefinition>((json)=>DestinyVendorCategoryOverlayDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}