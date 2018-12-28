import 'destiny_display_properties_definition.dart';
import 'destiny_talent_node_step_groups.dart';

/** Perks are modifiers to a character or item that can be applied situationally.
- Perks determine a weapons' damage type.
- Perks put the Mods in Modifiers (they are literally the entity that bestows the Sandbox benefit for whatever fluff text about the modifier in the Socket, Plug or Talent Node)
- Perks are applied for unique alterations of state in Objectives
Anyways, I'm sure you can see why perks are so interesting.
What Perks often don't have is human readable information, so we attempt to reverse engineer that by pulling that data from places that uniquely refer to these perks: namely, Talent Nodes and Plugs. That only gives us a subset of perks that are human readable, but those perks are the ones people generally care about anyways. The others are left as a mystery, their true purpose mostly unknown and undocumented. */
class DestinySandboxPerkDefinition{
	
	/** These display properties are by no means guaranteed to be populated. Usually when it is, it's only because we back-filled them with the displayProperties of some Talent Node or Plug item that happened to be uniquely providing that perk. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/** The string identifier for the perk. */
	String perkIdentifier;
	
	/** If true, you can actually show the perk in the UI. Otherwise, it doesn't have useful player-facing information. */
	bool isDisplayable;
	
	/** If this perk grants a damage type to a weapon, the damage type will be defined here.
Unless you have a compelling reason to use this enum value, use the damageTypeHash instead to look up the actual DestinyDamageTypeDefinition. */
	int damageType;
	
	/** The hash identifier for looking up the DestinyDamageTypeDefinition, if this perk has a damage type.
This is preferred over using the damageType enumeration value, which has been left purely because it is occasionally convenient. */
	int damageTypeHash;
	
	/** An old holdover from the original Armory, this was an attempt to group perks by functionality.
It is as yet unpopulated, and there will be quite a bit of work needed to restore it to its former working order. */
	DestinyTalentNodeStepGroups perkGroups;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinySandboxPerkDefinition(
		this.displayProperties,
		this.perkIdentifier,
		this.isDisplayable,
		this.damageType,
		this.damageTypeHash,
		this.perkGroups,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinySandboxPerkDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinySandboxPerkDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['perkIdentifier'],
				data['isDisplayable'],
				data['damageType'],
				data['damageTypeHash'],
				data['perkGroups'] != null ? DestinyTalentNodeStepGroups.fromMap(data['perkGroups']) : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinySandboxPerkDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinySandboxPerkDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinySandboxPerkDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties;
			data['perkIdentifier'] = this.perkIdentifier;
			data['isDisplayable'] = this.isDisplayable;
			data['damageType'] = this.damageType;
			data['damageTypeHash'] = this.damageTypeHash;
			data['perkGroups'] = this.perkGroups;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}