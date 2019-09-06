
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_quality_block_definition.g.dart';

/// An item&#39;s &quot;Quality&quot; determines its calculated stats. The Level at which the item spawns is combined with its &quot;qualityLevel&quot; along with some additional calculations to determine the value of those stats.
/// In Destiny 2, most items don&#39;t have default item levels and quality, making this property less useful: these apparently are almost always determined by the complex mechanisms of the Reward system rather than statically. They are still provided here in case they are still useful for people. This also contains some information about Infusion.
@JsonSerializable()
class DestinyItemQualityBlockDefinition {

	/// The &quot;base&quot; defined level of an item. This is a list because, in theory, each Expansion could define its own base level for an item.
	/// In practice, not only was that never done in Destiny 1, but now this isn&#39;t even populated at all. When it&#39;s not populated, the level at which it spawns has to be inferred by Reward information, of which BNet receives an imperfect view and will only be reliable on instanced data as a result.
	@JsonKey(name:'itemLevels')
	List<int> itemLevels;

	/// qualityLevel is used in combination with the item&#39;s level to calculate stats like Attack and Defense. It plays a role in that calculation, but not nearly as large as itemLevel does.
	@JsonKey(name:'qualityLevel')
	int qualityLevel;

	/// The string identifier for this item&#39;s &quot;infusability&quot;, if any. 
	/// Items that match the same infusionCategoryName are allowed to infuse with each other.
	/// DEPRECATED: Items can now have multiple infusion categories. Please use infusionCategoryHashes instead.
	@JsonKey(name:'infusionCategoryName')
	String infusionCategoryName;

	/// The hash identifier for the infusion. It does not map to a Definition entity.
	/// DEPRECATED: Items can now have multiple infusion categories. Please use infusionCategoryHashes instead.
	@JsonKey(name:'infusionCategoryHash')
	int infusionCategoryHash;

	/// If any one of these hashes matches any value in another item&#39;s infusionCategoryHashes, the two can infuse with each other.
	@JsonKey(name:'infusionCategoryHashes')
	List<int> infusionCategoryHashes;

	/// An item can refer to pre-set level requirements. They are defined in DestinyProgressionLevelRequirementDefinition, and you can use this hash to find the appropriate definition.
	@JsonKey(name:'progressionLevelRequirementHash')
	int progressionLevelRequirementHash;
	DestinyItemQualityBlockDefinition();

	factory DestinyItemQualityBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemQualityBlockDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemQualityBlockDefinitionToJson(this);
}
