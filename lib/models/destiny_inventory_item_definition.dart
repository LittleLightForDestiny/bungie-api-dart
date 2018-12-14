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
class DestinyInventoryItemDefinition{
	DestinyDisplayPropertiesDefinition displayProperties;
	int collectibleHash;
	String secondaryIcon;
	String secondaryOverlay;
	String secondarySpecial;
	DestinyColor backgroundColor;
	String screenshot;
	String itemTypeDisplayName;
	String uiItemDisplayStyle;
	String itemTypeAndTierDisplayName;
	String displaySource;
	String tooltipStyle;
	DestinyItemActionBlockDefinition action;
	DestinyItemInventoryBlockDefinition inventory;
	DestinyItemSetBlockDefinition setData;
	DestinyItemStatBlockDefinition stats;
	int emblemObjectiveHash;
	DestinyEquippingBlockDefinition equippingBlock;
	DestinyItemTranslationBlockDefinition translationBlock;
	DestinyItemPreviewBlockDefinition preview;
	DestinyItemQualityBlockDefinition quality;
	DestinyItemValueBlockDefinition value;
	DestinyItemSourceBlockDefinition sourceData;
	DestinyItemObjectiveBlockDefinition objectives;
	DestinyItemPlugDefinition plug;
	DestinyItemGearsetBlockDefinition gearset;
	DestinyItemSackBlockDefinition sack;
	DestinyItemSocketBlockDefinition sockets;
	DestinyItemSummaryBlockDefinition summary;
	DestinyItemTalentGridBlockDefinition talentGrid;
	List<DestinyItemInvestmentStatDefinition> investmentStats;
	List<DestinyItemPerkEntryDefinition> perks;
	int loreHash;
	int summaryItemHash;
	List<DestinyAnimationReference> animations;
	bool allowActions;
	List<HyperlinkReference> links;
	bool doesPostmasterPullHaveSideEffects;
	bool nonTransferrable;
	List<int> itemCategoryHashes;
	int specialItemType;
	int itemType;
	int itemSubType;
	int classType;
	bool equippable;
	List<int> damageTypeHashes;
	List<int> damageTypes;
	int defaultDamageType;
	int defaultDamageTypeHash;
	int hash;
	int index;
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
				data['damageTypes'],
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
			data['displayProperties'] = this.displayProperties.toMap();
			data['collectibleHash'] = this.collectibleHash;
			data['secondaryIcon'] = this.secondaryIcon;
			data['secondaryOverlay'] = this.secondaryOverlay;
			data['secondarySpecial'] = this.secondarySpecial;
			data['backgroundColor'] = this.backgroundColor;
			data['screenshot'] = this.screenshot;
			data['itemTypeDisplayName'] = this.itemTypeDisplayName;
			data['uiItemDisplayStyle'] = this.uiItemDisplayStyle;
			data['itemTypeAndTierDisplayName'] = this.itemTypeAndTierDisplayName;
			data['displaySource'] = this.displaySource;
			data['tooltipStyle'] = this.tooltipStyle;
			data['action'] = this.action;
			data['inventory'] = this.inventory;
			data['setData'] = this.setData;
			data['stats'] = this.stats;
			data['emblemObjectiveHash'] = this.emblemObjectiveHash;
			data['equippingBlock'] = this.equippingBlock;
			data['translationBlock'] = this.translationBlock;
			data['preview'] = this.preview;
			data['quality'] = this.quality;
			data['value'] = this.value;
			data['sourceData'] = this.sourceData;
			data['objectives'] = this.objectives;
			data['plug'] = this.plug;
			data['gearset'] = this.gearset;
			data['sack'] = this.sack;
			data['sockets'] = this.sockets;
			data['summary'] = this.summary;
			data['talentGrid'] = this.talentGrid;
			data['investmentStats'] = this.investmentStats.map((item)=>item.toMap()).toList();
			data['perks'] = this.perks.map((item)=>item.toMap()).toList();
			data['loreHash'] = this.loreHash;
			data['summaryItemHash'] = this.summaryItemHash;
			data['animations'] = this.animations.map((item)=>item.toMap()).toList();
			data['allowActions'] = this.allowActions;
			data['links'] = this.links.map((item)=>item.toMap()).toList();
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