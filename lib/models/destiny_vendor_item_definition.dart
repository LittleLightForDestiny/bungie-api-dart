import 'destiny_vendor_item_quantity.dart';
import 'destiny_item_creation_entry_level_definition.dart';
import 'destiny_vendor_sale_item_action_block_definition.dart';
import 'destiny_vendor_item_socket_override.dart';
class DestinyVendorItemDefinition{
	int vendorItemIndex;
	int itemHash;
	int quantity;
	List<int> failureIndexes;
	List<DestinyVendorItemQuantity> currencies;
	int refundPolicy;
	int refundTimeLimit;
	List<DestinyItemCreationEntryLevelDefinition> creationLevels;
	int displayCategoryIndex;
	int categoryIndex;
	int originalCategoryIndex;
	int minimumLevel;
	int maximumLevel;
	DestinyVendorSaleItemActionBlockDefinition action;
	String displayCategory;
	int inventoryBucketHash;
	int visibilityScope;
	int purchasableScope;
	int exclusivity;
	bool isOffer;
	bool isCrm;
	int sortValue;
	String expirationTooltip;
	List<int> redirectToSaleIndexes;
	List<DestinyVendorItemSocketOverride> socketOverrides;
	DestinyVendorItemDefinition(
		int this.vendorItemIndex,
		int this.itemHash,
		int this.quantity,
		List<int> this.failureIndexes,
		List<DestinyVendorItemQuantity> this.currencies,
		int this.refundPolicy,
		int this.refundTimeLimit,
		List<DestinyItemCreationEntryLevelDefinition> this.creationLevels,
		int this.displayCategoryIndex,
		int this.categoryIndex,
		int this.originalCategoryIndex,
		int this.minimumLevel,
		int this.maximumLevel,
		DestinyVendorSaleItemActionBlockDefinition this.action,
		String this.displayCategory,
		int this.inventoryBucketHash,
		int this.visibilityScope,
		int this.purchasableScope,
		int this.exclusivity,
		bool this.isOffer,
		bool this.isCrm,
		int this.sortValue,
		String this.expirationTooltip,
		List<int> this.redirectToSaleIndexes,
		List<DestinyVendorItemSocketOverride> this.socketOverrides,
	);

	static DestinyVendorItemDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorItemDefinition(
				data['vendorItemIndex'],
				data['itemHash'],
				data['quantity'],
				data['failureIndexes'],
				DestinyVendorItemQuantity.fromList(data['currencies']),
				data['refundPolicy'],
				data['refundTimeLimit'],
				DestinyItemCreationEntryLevelDefinition.fromList(data['creationLevels']),
				data['displayCategoryIndex'],
				data['categoryIndex'],
				data['originalCategoryIndex'],
				data['minimumLevel'],
				data['maximumLevel'],
				data['action'],
				data['displayCategory'],
				data['inventoryBucketHash'],
				data['visibilityScope'],
				data['purchasableScope'],
				data['exclusivity'],
				data['isOffer'],
				data['isCrm'],
				data['sortValue'],
				data['expirationTooltip'],
				data['redirectToSaleIndexes'],
				DestinyVendorItemSocketOverride.fromList(data['socketOverrides']),
		);
	}

	static List<DestinyVendorItemDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorItemDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorItemDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorItemIndex'] = vendorItemIndex;
			data['itemHash'] = itemHash;
			data['quantity'] = quantity;
			data['failureIndexes'] = failureIndexes;
			data['currencies'] = currencies.map((item)=>item.toMap());
			data['refundPolicy'] = refundPolicy;
			data['refundTimeLimit'] = refundTimeLimit;
			data['creationLevels'] = creationLevels.map((item)=>item.toMap());
			data['displayCategoryIndex'] = displayCategoryIndex;
			data['categoryIndex'] = categoryIndex;
			data['originalCategoryIndex'] = originalCategoryIndex;
			data['minimumLevel'] = minimumLevel;
			data['maximumLevel'] = maximumLevel;
			data['action'] = action;
			data['displayCategory'] = displayCategory;
			data['inventoryBucketHash'] = inventoryBucketHash;
			data['visibilityScope'] = visibilityScope;
			data['purchasableScope'] = purchasableScope;
			data['exclusivity'] = exclusivity;
			data['isOffer'] = isOffer;
			data['isCrm'] = isCrm;
			data['sortValue'] = sortValue;
			data['expirationTooltip'] = expirationTooltip;
			data['redirectToSaleIndexes'] = redirectToSaleIndexes;
			data['socketOverrides'] = socketOverrides.map((item)=>item.toMap());
	}
}