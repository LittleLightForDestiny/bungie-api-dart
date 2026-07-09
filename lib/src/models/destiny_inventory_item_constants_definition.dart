import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_inventory_item_constants_definition.g.dart';

@JsonSerializable()
class DestinyInventoryItemConstantsDefinition{	
	DestinyInventoryItemConstantsDefinition();

	
	/// Gear tier overlay images
	@JsonKey(name:'gearTierOverlayImagePaths')
	List<String>? gearTierOverlayImagePaths;
	
	/// Watermark drop shadow
	@JsonKey(name:'watermarkDropShadowPath')
	String? watermarkDropShadowPath;
	
	/// Reverse drop shadow for crafted icon identifier
	@JsonKey(name:'craftedBackgroundPath')
	String? craftedBackgroundPath;
	
	/// Teal flag for featured item watermarks
	@JsonKey(name:'featuredItemFlagPath')
	String? featuredItemFlagPath;
	
	/// Gold masterwork glow for non-Exotic items
	@JsonKey(name:'masterworkOverlayPath')
	String? masterworkOverlayPath;
	
	/// Gold masterwork glow for Exotic items
	@JsonKey(name:'masterworkExoticOverlayPath')
	String? masterworkExoticOverlayPath;
	
	/// Gold masterwork glow for non-Exotic Items, with a gold border
	@JsonKey(name:'masterworkBorderedOverlayPath')
	String? masterworkBorderedOverlayPath;
	
	/// Gold masterwork glow for Exotic items, with a gold border
	@JsonKey(name:'masterworkExoticBorderedOverlayPath')
	String? masterworkExoticBorderedOverlayPath;
	
	/// Crafted weapon overlay path
	@JsonKey(name:'craftedOverlayPath')
	String? craftedOverlayPath;
	
	/// Enhanced item overlay
	@JsonKey(name:'enhancedItemOverlayPath')
	String? enhancedItemOverlayPath;
	
	/// Layer between item and color background to denote holofoil status, introduced in v736
	@JsonKey(name:'holofoilBackgroundOverlayPath')
	String? holofoilBackgroundOverlayPath;
	
	/// Layer between item and color background to denote holofoil status, introduced in v900
	@JsonKey(name:'holofoil900BackgroundOverlayPath')
	String? holofoil900BackgroundOverlayPath;
	
	/// Layer between item and color background to denote holofoil status, introduced in v900, animated
	@JsonKey(name:'holofoil900AnimatedBackgroundOverlayPath')
	String? holofoil900AnimatedBackgroundOverlayPath;
	
	/// Layer between item and color background to denote universal ornament status
	@JsonKey(name:'universalOrnamentBackgroundOverlayPath')
	String? universalOrnamentBackgroundOverlayPath;
	
	/// Layer between a legendary item and its color background to denote universal ornament status
	@JsonKey(name:'universalOrnamentLegendaryBackgroundOverlayPath')
	String? universalOrnamentLegendaryBackgroundOverlayPath;
	
	/// Layer between an exotic item and its color background to denote universal ornament status
	@JsonKey(name:'universalOrnamentExoticBackgroundOverlayPath')
	String? universalOrnamentExoticBackgroundOverlayPath;
	
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int? hash;
	
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int? index;
	
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool? redacted;

	factory DestinyInventoryItemConstantsDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyInventoryItemConstantsDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyInventoryItemConstantsDefinitionToJson(this);

	static Future<DestinyInventoryItemConstantsDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyInventoryItemConstantsDefinition>((json)=>DestinyInventoryItemConstantsDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}