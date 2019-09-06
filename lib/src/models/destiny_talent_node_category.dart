import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_talent_node_category.g.dart';

/// An artificial construct provided by Bungie.Net, where we attempt to group talent nodes by functionality.
/// This is a single set of references to Talent Nodes that share a common trait or purpose.
@JsonSerializable()
class DestinyTalentNodeCategory {

	/// Mostly just for debug purposes, but if you find it useful you can have it. This is BNet&#39;s manually created identifier for this category.
	@JsonKey(name:'identifier')
	String identifier;

	/// If true, we found the localized content in a related DestinyLoreDefinition instead of local BNet localization files. This is mostly for ease of my own future investigations.
	@JsonKey(name:'isLoreDriven')
	bool isLoreDriven;

	/// Will contain at least the &quot;name&quot;, which will be the title of the category. We will likely not have description and an icon yet, but I&#39;m going to keep my options open.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// The set of all hash identifiers for Talent Nodes (DestinyTalentNodeDefinition) in this Talent Grid that are part of this Category.
	@JsonKey(name:'nodeHashes')
	List<int> nodeHashes;
	DestinyTalentNodeCategory();

	factory DestinyTalentNodeCategory.fromJson(Map<String, dynamic> json) => _$DestinyTalentNodeCategoryFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyTalentNodeCategoryToJson(this);
}
