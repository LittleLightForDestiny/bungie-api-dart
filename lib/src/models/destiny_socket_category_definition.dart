import 'package:json_annotation/json_annotation.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/destiny_socket_category_style.dart';

part 'destiny_socket_category_definition.g.dart';

/// Sockets on an item are organized into Categories visually.
/// You can find references to the socket category defined on an item&#39;s DestinyInventoryItemDefinition.sockets.socketCategories property.
/// This has the display information for rendering the categories&#39; header, and a hint for how the UI should handle showing this category.
/// The shitty thing about this, however, is that the socket categories&#39; UI style can be overridden by the item&#39;s UI style. For instance, the Socket Category used by Emote Sockets says it&#39;s &quot;consumable,&quot; but that&#39;s a lie: they&#39;re all reusable, and overridden by the detail UI pages in ways that we can&#39;t easily account for in the API.
/// As a result, I will try to compile these rules into the individual sockets on items, and provide the best hint possible there through the plugSources property. In the future, I may attempt to use this information in conjunction with the item to provide a more usable UI hint on the socket layer, but for now improving the consistency of plugSources is the best I have time to provide. (See https:&#x2F;&#x2F;github.com&#x2F;Bungie-net&#x2F;api&#x2F;issues&#x2F;522 for more info)
@JsonSerializable()
class DestinySocketCategoryDefinition{
	
	DestinySocketCategoryDefinition();

	factory DestinySocketCategoryDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinySocketCategoryDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;
	/// A string hinting to the game's UI system about how the sockets in this category should be displayed.
	/// BNet doesn't use it: it's up to you to find valid values and make your own special UI if you want to honor this category style.
	@JsonKey(name:'uiCategoryStyle')
	int uiCategoryStyle;
	/// Same as uiCategoryStyle, but in a more usable enumeration form.
	@JsonKey(name:'categoryStyle',unknownEnumValue:DestinySocketCategoryStyle.ProtectedInvalidEnumValue)
	DestinySocketCategoryStyle categoryStyle;
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;

	
	
	Map<String, dynamic> toJson() => _$DestinySocketCategoryDefinitionToJson(this);
}