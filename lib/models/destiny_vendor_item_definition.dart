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
		this.vendorItemIndex,
		this.itemHash,
		this.quantity,
		this.failureIndexes,
		this.currencies,
		this.refundPolicy,
		this.refundTimeLimit,
		this.creationLevels,
		this.displayCategoryIndex,
		this.categoryIndex,
		this.originalCategoryIndex,
		this.minimumLevel,
		this.maximumLevel,
		this.action,
		this.displayCategory,
		this.inventoryBucketHash,
		this.visibilityScope,
		this.purchasableScope,
		this.exclusivity,
		this.isOffer,
		this.isCrm,
		this.sortValue,
		this.expirationTooltip,
		this.redirectToSaleIndexes,
		this.socketOverrides,
	);

	static DestinyVendorItemDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorItemDefinition(
				data['vendorItemIndex'],
				data['itemHash'],
				data['quantity'],
				data['failureIndexes'] != null ? data['failureIndexes']?.cast<int>() ?? null : null,
				data['currencies'] != null ? DestinyVendorItemQuantity.fromList(data['currencies']) : null,
				data['refundPolicy'],
				data['refundTimeLimit'],
				data['creationLevels'] != null ? DestinyItemCreationEntryLevelDefinition.fromList(data['creationLevels']) : null,
				data['displayCategoryIndex'],
				data['categoryIndex'],
				data['originalCategoryIndex'],
				data['minimumLevel'],
				data['maximumLevel'],
				data['action'] != null ? DestinyVendorSaleItemActionBlockDefinition.fromMap(data['action']) : null,
				data['displayCategory'],
				data['inventoryBucketHash'],
				data['visibilityScope'],
				data['purchasableScope'],
				data['exclusivity'],
				data['isOffer'],
				data['isCrm'],
				data['sortValue'],
				data['expirationTooltip'],
				data['redirectToSaleIndexes'] != null ? data['redirectToSaleIndexes']?.cast<int>() ?? null : null,
				data['socketOverrides'] != null ? DestinyVendorItemSocketOverride.fromList(data['socketOverrides']) : null,
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
			data['vendorItemIndex'] = this.vendorItemIndex;
			data['itemHash'] = this.itemHash;
			data['quantity'] = this.quantity;
			data['failureIndexes'] = this.failureIndexes;
			data['currencies'] = this.currencies.map((item)=>item.toMap()).toList();
			data['refundPolicy'] = this.refundPolicy;
			data['refundTimeLimit'] = this.refundTimeLimit;
			data['creationLevels'] = this.creationLevels.map((item)=>item.toMap()).toList();
			data['displayCategoryIndex'] = this.displayCategoryIndex;
			data['categoryIndex'] = this.categoryIndex;
			data['originalCategoryIndex'] = this.originalCategoryIndex;
			data['minimumLevel'] = this.minimumLevel;
			data['maximumLevel'] = this.maximumLevel;
			data['action'] = this.action;
			data['displayCategory'] = this.displayCategory;
			data['inventoryBucketHash'] = this.inventoryBucketHash;
			data['visibilityScope'] = this.visibilityScope;
			data['purchasableScope'] = this.purchasableScope;
			data['exclusivity'] = this.exclusivity;
			data['isOffer'] = this.isOffer;
			data['isCrm'] = this.isCrm;
			data['sortValue'] = this.sortValue;
			data['expirationTooltip'] = this.expirationTooltip;
			data['redirectToSaleIndexes'] = this.redirectToSaleIndexes;
			data['socketOverrides'] = this.socketOverrides.map((item)=>item.toMap()).toList();
		return data;
	}
}