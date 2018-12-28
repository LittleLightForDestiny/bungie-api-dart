import 'destiny_stat_display_definition.dart';
import 'destiny_stat_override_definition.dart';

/* When an inventory item (DestinyInventoryItemDefinition) has Stats (such as Attack Power), the item will refer to a Stat Group. This definition enumerates the properties used to transform the item's "Investment" stats into "Display" stats.
See DestinyStatDefinition's documentation for information about the transformation of Stats, and the meaning of an Investment vs. a Display stat.
If you don't want to do these calculations on your own, fear not: pulling live data from the BNet endpoints will return display stat values pre-computed and ready for you to use. I highly recommend this approach, saves a lot of time and also accounts for certain stat modifiers that can't easily be accounted for without live data (such as stat modifiers on Talent Grids and Socket Plugs) */
class DestinyStatGroupDefinition{
	
	/* The maximum possible value that any stat in this group can be transformed into.
This is used by stats that *don't* have scaledStats entries below, but that still need to be displayed as a progress bar, in which case this is used as the upper bound for said progress bar. (the lower bound is always 0) */
	int maximumValue;
	
	/* This apparently indicates the position of the stats in the UI? I've returned it in case anyone can use it, but it's not of any use to us on BNet. Something's being lost in translation with this value. */
	int uiPosition;
	
	/* Any stat that requires scaling to be transformed from an "Investment" stat to a "Display" stat will have an entry in this list. For more information on what those types of stats mean and the transformation process, see DestinyStatDefinition.
In retrospect, I wouldn't mind if this was a dictionary keyed by the stat hash instead. But I'm going to leave it be because [[After Apple Picking]]. */
	List<DestinyStatDisplayDefinition> scaledStats;
	
	/* The game has the ability to override, based on the stat group, what the localized text is that is displayed for Stats being shown on the item.
Mercifully, no Stat Groups use this feature currently. If they start using them, we'll all need to start using them (and those of you who are more prudent than I am can go ahead and start pre-checking for this.) */
	Map<String, DestinyStatOverrideDefinition> overrides;
	
	/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/* The index of the entity as it was found in the investment tables. */
	int index;
	
	/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyStatGroupDefinition(
		this.maximumValue,
		this.uiPosition,
		this.scaledStats,
		this.overrides,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyStatGroupDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyStatGroupDefinition(
				data['maximumValue'],
				data['uiPosition'],
				data['scaledStats'] != null ? DestinyStatDisplayDefinition.fromList(data['scaledStats']) : null,
				data['overrides'] != null ? Map<String, DestinyStatOverrideDefinition>.from(data['overrides'].map((k, v)=>MapEntry(k, DestinyStatOverrideDefinition.fromMap(v)))) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyStatGroupDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyStatGroupDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyStatGroupDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['maximumValue'] = this.maximumValue;
			data['uiPosition'] = this.uiPosition;
			data['scaledStats'] = this.scaledStats.map((item)=>item.toMap()).toList();
			data['overrides'] = this.overrides;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}