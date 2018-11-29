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
		DestinyDisplayPropertiesDefinition this.displayProperties,
		int this.collectibleHash,
		String this.secondaryIcon,
		String this.secondaryOverlay,
		String this.secondarySpecial,
		DestinyColor this.backgroundColor,
		String this.screenshot,
		String this.itemTypeDisplayName,
		String this.uiItemDisplayStyle,
		String this.itemTypeAndTierDisplayName,
		String this.displaySource,
		String this.tooltipStyle,
		DestinyItemActionBlockDefinition this.action,
		DestinyItemInventoryBlockDefinition this.inventory,
		DestinyItemSetBlockDefinition this.setData,
		DestinyItemStatBlockDefinition this.stats,
		int this.emblemObjectiveHash,
		DestinyEquippingBlockDefinition this.equippingBlock,
		DestinyItemTranslationBlockDefinition this.translationBlock,
		DestinyItemPreviewBlockDefinition this.preview,
		DestinyItemQualityBlockDefinition this.quality,
		DestinyItemValueBlockDefinition this.value,
		DestinyItemSourceBlockDefinition this.sourceData,
		DestinyItemObjectiveBlockDefinition this.objectives,
		DestinyItemPlugDefinition this.plug,
		DestinyItemGearsetBlockDefinition this.gearset,
		DestinyItemSackBlockDefinition this.sack,
		DestinyItemSocketBlockDefinition this.sockets,
		DestinyItemSummaryBlockDefinition this.summary,
		DestinyItemTalentGridBlockDefinition this.talentGrid,
		List<DestinyItemInvestmentStatDefinition> this.investmentStats,
		List<DestinyItemPerkEntryDefinition> this.perks,
		int this.loreHash,
		int this.summaryItemHash,
		List<DestinyAnimationReference> this.animations,
		bool this.allowActions,
		List<HyperlinkReference> this.links,
		bool this.doesPostmasterPullHaveSideEffects,
		bool this.nonTransferrable,
		List<int> this.itemCategoryHashes,
		int this.specialItemType,
		int this.itemType,
		int this.itemSubType,
		int this.classType,
		bool this.equippable,
		List<int> this.damageTypeHashes,
		List<int> this.damageTypes,
		int this.defaultDamageType,
		int this.defaultDamageTypeHash,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyInventoryItemDefinition fromJson(Map<String, dynamic> data){
		return new DestinyInventoryItemDefinition(
				DestinyDisplayPropertiesDefinition.fromJson(data['displayProperties']),
				data['collectibleHash'],
				data['secondaryIcon'],
				data['secondaryOverlay'],
				data['secondarySpecial'],
				data['backgroundColor'],
				data['screenshot'],
				data['itemTypeDisplayName'],
				data['uiItemDisplayStyle'],
				data['itemTypeAndTierDisplayName'],
				data['displaySource'],
				data['tooltipStyle'],
				data['action'],
				data['inventory'],
				data['setData'],
				data['stats'],
				data['emblemObjectiveHash'],
				data['equippingBlock'],
				data['translationBlock'],
				data['preview'],
				data['quality'],
				data['value'],
				data['sourceData'],
				data['objectives'],
				data['plug'],
				data['gearset'],
				data['sack'],
				data['sockets'],
				data['summary'],
				data['talentGrid'],
				DestinyItemInvestmentStatDefinition.fromList(data['investmentStats']),
				DestinyItemPerkEntryDefinition.fromList(data['perks']),
				data['loreHash'],
				data['summaryItemHash'],
				DestinyAnimationReference.fromList(data['animations']),
				data['allowActions'],
				HyperlinkReference.fromList(data['links']),
				data['doesPostmasterPullHaveSideEffects'],
				data['nonTransferrable'],
				data['itemCategoryHashes'],
				data['specialItemType'],
				data['itemType'],
				data['itemSubType'],
				data['classType'],
				data['equippable'],
				data['damageTypeHashes'],
				data['damageTypes'],
				data['defaultDamageType'],
				data['defaultDamageTypeHash'],
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyInventoryItemDefinition> fromList(List<dynamic> data){
		List<DestinyInventoryItemDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyInventoryItemDefinition.fromJson(item));
    });
    return list;
	}
}