import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_stat_definition.g.dart';

/// This represents a stat that&#39;s applied to a character or an item (such as a weapon, piece of armor, or a vehicle).
/// An example of a stat might be Attack Power on a weapon.
/// Stats go through a complex set of transformations before they end up being shown to the user as a number or a progress bar, and those transformations are fundamentally intertwined with the concept of a &quot;Stat Group&quot; (DestinyStatGroupDefinition). Items have both Stats and a reference to a Stat Group, and it is the Stat Group that takes the raw stat information and gives it both rendering metadata (such as whether to show it as a number or a progress bar) and the final transformation data (interpolation tables to turn the raw investment stat into a display stat). Please see DestinyStatGroupDefinition for more information on that transformational process.
/// Stats are segregated from Stat Groups because different items and types of items can refer to the same stat, but have different &quot;scales&quot; for the stat while still having the same underlying value. For example, both a Shotgun and an Auto Rifle may have a &quot;raw&quot; impact stat of 50, but the Auto Rifle&#39;s Stat Group will scale that 50 down so that, when it is displayed, it is a smaller value relative to the shotgun. (this is a totally made up example, don&#39;t assume shotguns have naturally higher impact than auto rifles because of this)
/// A final caveat is that some stats, even after this &quot;final&quot; transformation, go through yet another set of transformations directly in the game as a result of dynamic, stateful scripts that get run. BNet has no access to these scripts, nor any way to know which scripts get executed. As a result, the stats for an item that you see in-game - particularly for stats that are often impacted by Perks, like Magazine Size - can change dramatically from what we return on Bungie.Net. This is a known issue with no fix coming down the pipeline. Take these stats with a grain of salt.
/// Stats actually go through four transformations, for those interested:
/// 1) &quot;Sandbox&quot; stat, the &quot;most raw&quot; form. These are pretty much useless without transformations applied, and thus are not currently returned in the API. If you really want these, we can provide them. Maybe someone could do something cool with it?
/// 2) &quot;Investment&quot; stat (the stat&#39;s value after DestinyStatDefinition&#39;s interpolation tables and aggregation logic is applied to the &quot;Sandbox&quot; stat value)
/// 3) &quot;Display&quot; stat (the stat&#39;s base UI-visible value after DestinyStatGroupDefinition&#39;s interpolation tables are applied to the Investment Stat value. For most stats, this is what is displayed.)
/// 4) Underlying in-game stat (the stat&#39;s actual value according to the game, after the game runs dynamic scripts based on the game and character&#39;s state. This is the final transformation that BNet does not have access to. For most stats, this is not actually displayed to the user, with the exception of Magazine Size which is then piped back to the UI for display in-game, but not to BNet.)
@JsonSerializable()
class DestinyStatDefinition {

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// Stats can exist on a character or an item, and they may potentially be aggregated in different ways. The DestinyStatAggregationType enum value indicates the way that this stat is being aggregated.
	@JsonKey(name:'aggregationType')
	int aggregationType;

	/// True if the stat is computed rather than being delivered as a raw value on items.
	/// For instance, the Light stat in Destiny 1 was a computed stat.
	@JsonKey(name:'hasComputedBlock')
	bool hasComputedBlock;

	/// The category of the stat, according to the game.
	@JsonKey(name:'statCategory')
	int statCategory;

	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;

	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;

	/// If this is true, then there is an entity with this identifier&#x2F;type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;
	DestinyStatDefinition();

	factory DestinyStatDefinition.fromJson(Map<String, dynamic> json) => _$DestinyStatDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyStatDefinitionToJson(this);
}
