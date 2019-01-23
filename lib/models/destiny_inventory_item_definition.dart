import 'destiny_display_properties_definition.dart';
import 'destiny_color.dart';
import 'destiny_item_action_block_definition.dart';
import 'destiny_item_inventory_block_definition.dart';
import 'destiny_item_set_block_definition.dart';
import 'destiny_item_stat_block_definition.dart';
import 'destiny_equipping_block_definition.dart';
import 'destiny_item_translation_block_definition.dart';
import 'destiny_item_preview_block_definition.dart';
import 'destiny_item_quality_block_definition.dart';
import 'destiny_item_value_block_definition.dart';
import 'destiny_item_source_block_definition.dart';
import 'destiny_item_objective_block_definition.dart';
import 'destiny_item_plug_definition.dart';
import 'destiny_item_gearset_block_definition.dart';
import 'destiny_item_sack_block_definition.dart';
import 'destiny_item_socket_block_definition.dart';
import 'destiny_item_summary_block_definition.dart';
import 'destiny_item_talent_grid_block_definition.dart';
import 'destiny_item_investment_stat_definition.dart';
import 'destiny_item_perk_entry_definition.dart';
import 'destiny_animation_reference.dart';
import 'hyperlink_reference.dart';

/** So much of what you see in Destiny is actually an Item used in a new and creative way. This is the definition for Items in Destiny, which started off as just entities that could exist in your Inventory but ended up being the backing data for so much more: quests, reward previews, slots, and subclasses.
In practice, you will want to associate this data with "live" item data from a Bungie.Net Platform call: these definitions describe the item in generic, non-instanced terms: but an actual instance of an item can vary widely from these generic definitions. */
class DestinyInventoryItemDefinition{
	
	/** Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information. */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/** If this item has a collectible related to it, this is the hash identifier of that collectible entry. */
	int collectibleHash;
	
	/** A secondary icon associated with the item. Currently this is used in very context specific applications, such as Emblem Nameplates. */
	String secondaryIcon;
	
	/** Pulled from the secondary icon, this is the "secondary background" of the secondary icon. Confusing? Sure, that's why I call it "overlay" here: because as far as it's been used thus far, it has been for an optional overlay image. We'll see if that holds up, but at least for now it explains what this image is a bit better. */
	String secondaryOverlay;
	
	/** Pulled from the Secondary Icon, this is the "special" background for the item. For Emblems, this is the background image used on the Details view: but it need not be limited to that for other types of items. */
	String secondarySpecial;
	
	/** Sometimes, an item will have a background color. Most notably this occurs with Emblems, who use the Background Color for small character nameplates such as the "friends" view you see in-game. There are almost certainly other items that have background color as well, though I have not bothered to investigate what items have it nor what purposes they serve: use it as you will. */
	DestinyColor backgroundColor;
	
	/** If we were able to acquire an in-game screenshot for the item, the path to that screenshot will be returned here. Note that not all items have screenshots: particularly not any non-equippable items. */
	String screenshot;
	
	/** The localized title/name of the item's type. This can be whatever the designers want, and has no guarantee of consistency between items. */
	String itemTypeDisplayName;
	
	/** A string identifier that the game's UI uses to determine how the item should be rendered in inventory screens and the like. This could really be anything - at the moment, we don't have the time to really breakdown and maintain all the possible strings this could be, partly because new ones could be added ad hoc. But if you want to use it to dictate your own UI, or look for items with a certain display style, go for it! */
	String uiItemDisplayStyle;
	
	/** It became a common enough pattern in our UI to show Item Type and Tier combined into a single localized string that I'm just going to go ahead and start pre-creating these for items. */
	String itemTypeAndTierDisplayName;
	
	/** In theory, it is a localized string telling you about how you can find the item. I really wish this was more consistent. Many times, it has nothing. Sometimes, it's instead a more narrative-forward description of the item. Which is cool, and I wish all properties had that data, but it should really be its own property. */
	String displaySource;
	
	/** An identifier that the game UI uses to determine what type of tooltip to show for the item. These have no corresponding definitions that BNet can link to: so it'll be up to you to interpret and display your UI differently according to these styles (or ignore it). */
	String tooltipStyle;
	
	/** If the item can be "used", this block will be non-null, and will have data related to the action performed when using the item. (Guess what? 99% of the time, this action is "dismantle". Shocker) */
	DestinyItemActionBlockDefinition action;
	
	/** If this item can exist in an inventory, this block will be non-null. In practice, every item that currently exists has one of these blocks. But note that it is not necessarily guaranteed. */
	DestinyItemInventoryBlockDefinition inventory;
	
	/** If this item is a quest, this block will be non-null. In practice, I wish I had called this the Quest block, but at the time it wasn't clear to me whether it would end up being used for purposes other than quests. It will contain data about the steps in the quest, and mechanics we can use for displaying and tracking the quest. */
	DestinyItemSetBlockDefinition setData;
	
	/** If this item can have stats (such as a weapon, armor, or vehicle), this block will be non-null and populated with the stats found on the item. */
	DestinyItemStatBlockDefinition stats;
	
	/** If the item is an emblem that has a special Objective attached to it - for instance, if the emblem tracks PVP Kills, or what-have-you. This is a bit different from, for example, the Vanguard Kill Tracker mod, which pipes data into the "art channel". When I get some time, I would like to standardize these so you can get at the values they expose without having to care about what they're being used for and how they are wired up, but for now here's the raw data. */
	int emblemObjectiveHash;
	
	/** If this item can be equipped, this block will be non-null and will be populated with the conditions under which it can be equipped. */
	DestinyEquippingBlockDefinition equippingBlock;
	
	/** If this item can be rendered, this block will be non-null and will be populated with rendering information. */
	DestinyItemTranslationBlockDefinition translationBlock;
	
	/** If this item can be Used or Acquired to gain other items (for instance, how Eververse Boxes can be consumed to get items from the box), this block will be non-null and will give summary information for the items that can be acquired. */
	DestinyItemPreviewBlockDefinition preview;
	
	/** If this item can have a level or stats, this block will be non-null and will be populated with default quality (item level, "quality", and infusion) data. See the block for more details, there's often less upfront information in D2 so you'll want to be aware of how you use quality and item level on the definition level now. */
	DestinyItemQualityBlockDefinition quality;
	
	/** The conceptual "Value" of an item, if any was defined. See the DestinyItemValueBlockDefinition for more details. */
	DestinyItemValueBlockDefinition value;
	
	/** If this item has a known source, this block will be non-null and populated with source information. Unfortunately, at this time we are not generating sources: that is some aggressively manual work which we didn't have time for, and I'm hoping to get back to at some point in the future. */
	DestinyItemSourceBlockDefinition sourceData;
	
	/** If this item has Objectives (extra tasks that can be accomplished related to the item... most frequently when the item is a Quest Step and the Objectives need to be completed to move on to the next Quest Step), this block will be non-null and the objectives defined herein. */
	DestinyItemObjectiveBlockDefinition objectives;
	
	/** If this item *is* a Plug, this will be non-null and the info defined herein. See DestinyItemPlugDefinition for more information. */
	DestinyItemPlugDefinition plug;
	
	/** If this item has related items in a "Gear Set", this will be non-null and the relationships defined herein. */
	DestinyItemGearsetBlockDefinition gearset;
	
	/** If this item is a "reward sack" that can be opened to provide other items, this will be non-null and the properties of the sack contained herein. */
	DestinyItemSackBlockDefinition sack;
	
	/** If this item has any Sockets, this will be non-null and the individual sockets on the item will be defined herein. */
	DestinyItemSocketBlockDefinition sockets;
	
	/** Summary data about the item. */
	DestinyItemSummaryBlockDefinition summary;
	
	/** If the item has a Talent Grid, this will be non-null and the properties of the grid defined herein. Note that, while many items still have talent grids, the only ones with meaningful Nodes still on them will be Subclass/"Build" items. */
	DestinyItemTalentGridBlockDefinition talentGrid;
	
	/** If the item has stats, this block will be defined. It has the "raw" investment stats for the item. These investment stats don't take into account the ways that the items can spawn, nor do they take into account any Stat Group transformations. I have retained them for debugging purposes, but I do not know how useful people will find them. */
	List<DestinyItemInvestmentStatDefinition> investmentStats;
	
	/** If the item has any *intrinsic* Perks (Perks that it will provide regardless of Sockets, Talent Grid, and other transitory state), they will be defined here. */
	List<DestinyItemPerkEntryDefinition> perks;
	
	/** If the item has any related Lore (DestinyLoreDefinition), this will be the hash identifier you can use to look up the lore definition. */
	int loreHash;
	
	/** There are times when the game will show you a "summary/vague" version of an item - such as a description of its type represented as a DestinyInventoryItemDefinition - rather than display the item itself.
This happens sometimes when summarizing possible rewards in a tooltip. This is the item displayed instead, if it exists. */
	int summaryItemHash;
	
	/** If any animations were extracted from game content for this item, these will be the definitions of those animations. */
	List<DestinyAnimationReference> animations;
	
	/** BNet may forbid the execution of actions on this item via the API. If that is occurring, allowActions will be set to false. */
	bool allowActions;
	
	/** If we added any help or informational URLs about this item, these will be those links. */
	List<HyperlinkReference> links;
	
	/** The boolean will indicate to us (and you!) whether something *could* happen when you transfer this item from the Postmaster that might be considered a "destructive" action.
It is not feasible currently to tell you (or ourelves!) in a consistent way whether this *will* actually cause a destructive action, so we are playing it safe: if it has the potential to do so, we will not allow it to be transferred from the Postmaster by default. You will need to check for this flag before transferring an item from the Postmaster, or else you'll end up receiving an error. */
	bool doesPostmasterPullHaveSideEffects;
	
	/** The intrinsic transferability of an item.
I hate that this boolean is negative - but there's a reason.
Just because an item is intrinsically transferrable doesn't mean that it can be transferred, and we don't want to imply that this is the only source of that transferability. */
	bool nonTransferrable;
	
	/** BNet attempts to make a more formal definition of item "Categories", as defined by DestinyItemCategoryDefinition. This is a list of all Categories that we were able to algorithmically determine that this item is a member of. (for instance, that it's a "Weapon", that it's an "Auto Rifle", etc...)
The algorithm for these is, unfortunately, volatile. If you believe you see a miscategorized item, please let us know on the Bungie API forums. */
	List<int> itemCategoryHashes;
	
	/** In Destiny 1, we identified some items as having particular categories that we'd like to know about for various internal logic purposes. These are defined in SpecialItemType, and while these days the itemCategoryHashes are the preferred way of identifying types, we have retained this enum for its convenience. */
	int specialItemType;
	
	/** A value indicating the "base" the of the item. This enum is a useful but dramatic oversimplification of what it means for an item to have a "Type". Still, it's handy in many situations.
itemCategoryHashes are the preferred way of identifying types, we have retained this enum for its convenience. */
	int itemType;
	
	/** A value indicating the "sub-type" of the item. For instance, where an item might have an itemType value "Weapon", this will be something more specific like "Auto Rifle".
itemCategoryHashes are the preferred way of identifying types, we have retained this enum for its convenience. */
	int itemSubType;
	
	/** We run a similarly weak-sauce algorithm to try and determine whether an item is restricted to a specific class. If we find it to be restricted in such a way, we set this classType property to match the class' enumeration value so that users can easily identify class restricted items.
If you see a mis-classed item, please inform the developers in the Bungie API forum. */
	int classType;
	
	/** If true, then you will be allowed to equip the item if you pass its other requirements.
This being false means that you cannot equip the item under any circumstances. */
	bool equippable;
	
	/** Theoretically, an item can have many possible damage types. In *practice*, this is not true, but just in case weapons start being made that have multiple (for instance, an item where a socket has reusable plugs for every possible damage type that you can choose from freely), this field will return all of the possible damage types that are available to the weapon by default. */
	List<int> damageTypeHashes;
	
	/** This is the list of all damage types that we know ahead of time the item can take on. Unfortunately, this does not preclude the possibility of something funky happening to give the item a damage type that cannot be predicted beforehand: for example, if some designer decides to create arbitrary non-reusable plugs that cause damage type to change.
This damage type prediction will only use the following to determine potential damage types:
- Intrinsic perks
- Talent Node perks
- Known, reusable plugs for sockets */
	List<int> damageTypes;
	
	/** If the item has a damage type that could be considered to be default, it will be populated here.
For various upsetting reasons, it's surprisingly cumbersome to figure this out. I hope you're happy. */
	int defaultDamageType;
	
	/** Similar to defaultDamageType, but represented as the hash identifier for a DestinyDamageTypeDefinition.
I will likely regret leaving in the enumeration versions of these properties, but for now they're very convenient. */
	int defaultDamageTypeHash;
	
	/** The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/** The index of the entity as it was found in the investment tables. */
	int index;
	
	/** If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyInventoryItemDefinition(
		this.displayProperties,
		this.collectibleHash,
		this.secondaryIcon,
		this.secondaryOverlay,
		this.secondarySpecial,
		this.backgroundColor,
		this.screenshot,
		this.itemTypeDisplayName,
		this.uiItemDisplayStyle,
		this.itemTypeAndTierDisplayName,
		this.displaySource,
		this.tooltipStyle,
		this.action,
		this.inventory,
		this.setData,
		this.stats,
		this.emblemObjectiveHash,
		this.equippingBlock,
		this.translationBlock,
		this.preview,
		this.quality,
		this.value,
		this.sourceData,
		this.objectives,
		this.plug,
		this.gearset,
		this.sack,
		this.sockets,
		this.summary,
		this.talentGrid,
		this.investmentStats,
		this.perks,
		this.loreHash,
		this.summaryItemHash,
		this.animations,
		this.allowActions,
		this.links,
		this.doesPostmasterPullHaveSideEffects,
		this.nonTransferrable,
		this.itemCategoryHashes,
		this.specialItemType,
		this.itemType,
		this.itemSubType,
		this.classType,
		this.equippable,
		this.damageTypeHashes,
		this.damageTypes,
		this.defaultDamageType,
		this.defaultDamageTypeHash,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyInventoryItemDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyInventoryItemDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['collectibleHash'],
				data['secondaryIcon'],
				data['secondaryOverlay'],
				data['secondarySpecial'],
				data['backgroundColor'] != null ? DestinyColor.fromMap(data['backgroundColor']) : null,
				data['screenshot'],
				data['itemTypeDisplayName'],
				data['uiItemDisplayStyle'],
				data['itemTypeAndTierDisplayName'],
				data['displaySource'],
				data['tooltipStyle'],
				data['action'] != null ? DestinyItemActionBlockDefinition.fromMap(data['action']) : null,
				data['inventory'] != null ? DestinyItemInventoryBlockDefinition.fromMap(data['inventory']) : null,
				data['setData'] != null ? DestinyItemSetBlockDefinition.fromMap(data['setData']) : null,
				data['stats'] != null ? DestinyItemStatBlockDefinition.fromMap(data['stats']) : null,
				data['emblemObjectiveHash'],
				data['equippingBlock'] != null ? DestinyEquippingBlockDefinition.fromMap(data['equippingBlock']) : null,
				data['translationBlock'] != null ? DestinyItemTranslationBlockDefinition.fromMap(data['translationBlock']) : null,
				data['preview'] != null ? DestinyItemPreviewBlockDefinition.fromMap(data['preview']) : null,
				data['quality'] != null ? DestinyItemQualityBlockDefinition.fromMap(data['quality']) : null,
				data['value'] != null ? DestinyItemValueBlockDefinition.fromMap(data['value']) : null,
				data['sourceData'] != null ? DestinyItemSourceBlockDefinition.fromMap(data['sourceData']) : null,
				data['objectives'] != null ? DestinyItemObjectiveBlockDefinition.fromMap(data['objectives']) : null,
				data['plug'] != null ? DestinyItemPlugDefinition.fromMap(data['plug']) : null,
				data['gearset'] != null ? DestinyItemGearsetBlockDefinition.fromMap(data['gearset']) : null,
				data['sack'] != null ? DestinyItemSackBlockDefinition.fromMap(data['sack']) : null,
				data['sockets'] != null ? DestinyItemSocketBlockDefinition.fromMap(data['sockets']) : null,
				data['summary'] != null ? DestinyItemSummaryBlockDefinition.fromMap(data['summary']) : null,
				data['talentGrid'] != null ? DestinyItemTalentGridBlockDefinition.fromMap(data['talentGrid']) : null,
				data['investmentStats'] != null ? DestinyItemInvestmentStatDefinition.fromList(data['investmentStats']) : null,
				data['perks'] != null ? DestinyItemPerkEntryDefinition.fromList(data['perks']) : null,
				data['loreHash'],
				data['summaryItemHash'],
				data['animations'] != null ? DestinyAnimationReference.fromList(data['animations']) : null,
				data['allowActions'],
				data['links'] != null ? HyperlinkReference.fromList(data['links']) : null,
				data['doesPostmasterPullHaveSideEffects'],
				data['nonTransferrable'],
				data['itemCategoryHashes'] != null ? data['itemCategoryHashes']?.cast<int>() ?? null : null,
				data['specialItemType'],
				data['itemType'],
				data['itemSubType'],
				data['classType'],
				data['equippable'],
				data['damageTypeHashes'] != null ? data['damageTypeHashes']?.cast<int>() ?? null : null,
				data['damageTypes'] != null ? data['damageTypes']?.cast<int>() ?? null : null,
				data['defaultDamageType'],
				data['defaultDamageTypeHash'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyInventoryItemDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyInventoryItemDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyInventoryItemDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties != null? this.displayProperties.toMap() : null;
			data['collectibleHash'] = this.collectibleHash;
			data['secondaryIcon'] = this.secondaryIcon;
			data['secondaryOverlay'] = this.secondaryOverlay;
			data['secondarySpecial'] = this.secondarySpecial;
			data['backgroundColor'] = this.backgroundColor != null? this.backgroundColor.toMap() : null;
			data['screenshot'] = this.screenshot;
			data['itemTypeDisplayName'] = this.itemTypeDisplayName;
			data['uiItemDisplayStyle'] = this.uiItemDisplayStyle;
			data['itemTypeAndTierDisplayName'] = this.itemTypeAndTierDisplayName;
			data['displaySource'] = this.displaySource;
			data['tooltipStyle'] = this.tooltipStyle;
			data['action'] = this.action != null? this.action.toMap() : null;
			data['inventory'] = this.inventory != null? this.inventory.toMap() : null;
			data['setData'] = this.setData != null? this.setData.toMap() : null;
			data['stats'] = this.stats != null? this.stats.toMap() : null;
			data['emblemObjectiveHash'] = this.emblemObjectiveHash;
			data['equippingBlock'] = this.equippingBlock != null? this.equippingBlock.toMap() : null;
			data['translationBlock'] = this.translationBlock != null? this.translationBlock.toMap() : null;
			data['preview'] = this.preview != null? this.preview.toMap() : null;
			data['quality'] = this.quality != null? this.quality.toMap() : null;
			data['value'] = this.value != null? this.value.toMap() : null;
			data['sourceData'] = this.sourceData != null? this.sourceData.toMap() : null;
			data['objectives'] = this.objectives != null? this.objectives.toMap() : null;
			data['plug'] = this.plug != null? this.plug.toMap() : null;
			data['gearset'] = this.gearset != null? this.gearset.toMap() : null;
			data['sack'] = this.sack != null? this.sack.toMap() : null;
			data['sockets'] = this.sockets != null? this.sockets.toMap() : null;
			data['summary'] = this.summary != null? this.summary.toMap() : null;
			data['talentGrid'] = this.talentGrid != null? this.talentGrid.toMap() : null;
			data['investmentStats'] = this.investmentStats != null? this.investmentStats.map((item)=>item.toMap()).toList() : null;
			data['perks'] = this.perks != null? this.perks.map((item)=>item.toMap()).toList() : null;
			data['loreHash'] = this.loreHash;
			data['summaryItemHash'] = this.summaryItemHash;
			data['animations'] = this.animations != null? this.animations.map((item)=>item.toMap()).toList() : null;
			data['allowActions'] = this.allowActions;
			data['links'] = this.links != null? this.links.map((item)=>item.toMap()).toList() : null;
			data['doesPostmasterPullHaveSideEffects'] = this.doesPostmasterPullHaveSideEffects;
			data['nonTransferrable'] = this.nonTransferrable;
			data['itemCategoryHashes'] = this.itemCategoryHashes;
			data['specialItemType'] = this.specialItemType;
			data['itemType'] = this.itemType;
			data['itemSubType'] = this.itemSubType;
			data['classType'] = this.classType;
			data['equippable'] = this.equippable;
			data['damageTypeHashes'] = this.damageTypeHashes;
			data['damageTypes'] = this.damageTypes;
			data['defaultDamageType'] = this.defaultDamageType;
			data['defaultDamageTypeHash'] = this.defaultDamageTypeHash;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}