import 'destiny_vendor_item_quantity.dart';
import 'destiny_item_creation_entry_level_definition.dart';
import 'destiny_vendor_sale_item_action_block_definition.dart';
import 'destiny_vendor_item_socket_override.dart';

/* This represents an item being sold by the vendor. */
class DestinyVendorItemDefinition{
	
	/* The index into the DestinyVendorDefinition.saleList. This is what we use to refer to items being sold throughout live and definition data. */
	int vendorItemIndex;
	
	/* The hash identifier of the item being sold (DestinyInventoryItemDefinition).
Note that a vendor can sell the same item in multiple ways, so don't assume that itemHash is a unique identifier for this entity. */
	int itemHash;
	
	/* The amount you will recieve of the item described in itemHash if you make the purchase. */
	int quantity;
	
	/* An list of indexes into the DestinyVendorDefinition.failureStrings array, indicating the possible failure strings that can be relevant for this item. */
	List<int> failureIndexes;
	
	/* This is a pre-compiled aggregation of item value and priceOverrideList, so that we have one place to check for what the purchaser must pay for the item. Use this instead of trying to piece together the price separately.
The somewhat crappy part about this is that, now that item quantity overrides have dynamic modifiers, this will not necessarily be statically true. If you were using this instead of live data, switch to using live data. */
	List<DestinyVendorItemQuantity> currencies;
	
	/* If this item can be refunded, this is the policy for what will be refundd, how, and in what time period. */
	int refundPolicy;
	
	/* The amount of time before refundability of the newly purchased item will expire. */
	int refundTimeLimit;
	
	/* The Default level at which the item will spawn. Almost always driven by an adjusto these days. Ideally should be singular. It's a long story how this ended up as a list, but there is always either going to be 0:1 of these entities. */
	List<DestinyItemCreationEntryLevelDefinition> creationLevels;
	
	/* This is an index specifically into the display category, as opposed to the server-side Categories (which do not need to match or pair with each other in any way: server side categories are really just structures for common validation. Display Category will let us more easily categorize items visually) */
	int displayCategoryIndex;
	
	/* The index into the DestinyVendorDefinition.categories array, so you can find the category associated with this item. */
	int categoryIndex;
	
	/* Same as above, but for the original category indexes. */
	int originalCategoryIndex;
	
	/* The minimum character level at which this item is available for sale. */
	int minimumLevel;
	
	/* The maximum character level at which this item is available for sale. */
	int maximumLevel;
	
	/* The action to be performed when purchasing the item, if it's not just "buy". */
	DestinyVendorSaleItemActionBlockDefinition action;
	
	/* The string identifier for the category selling this item. */
	String displayCategory;
	
	/* The inventory bucket into which this item will be placed upon purchase. */
	int inventoryBucketHash;
	
	/* The most restrictive scope that determines whether the item is available in the Vendor's inventory. See DestinyGatingScope's documentation for more information.
This can be determined by Unlock gating, or by whether or not the item has purchase level requirements (minimumLevel and maximumLevel properties). */
	int visibilityScope;
	
	/* Similar to visibilityScope, it represents the most restrictive scope that determines whether the item can be purchased. It will at least be as restrictive as visibilityScope, but could be more restrictive if the item has additional purchase requirements beyond whether it is merely visible or not.
See DestinyGatingScope's documentation for more information. */
	int purchasableScope;
	
	/* If this item can only be purchased by a given platform, this indicates the platform to which it is restricted. */
	int exclusivity;
	
	/* If this sale can only be performed as the result of an offer check, this is true. */
	bool isOffer;
	
	/* If this sale can only be performed as the result of receiving a CRM offer, this is true. */
	bool isCrm;
	
	/* *if* the category this item is in supports non-default sorting, this value should represent the sorting value to use, pre-processed and ready to go. */
	int sortValue;
	
	/* If this item can expire, this is the tooltip message to show with its expiration info. */
	String expirationTooltip;
	
	/* If this is populated, the purchase of this item should redirect to purchasing these other items instead. */
	List<int> redirectToSaleIndexes;
	
	/*  */
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