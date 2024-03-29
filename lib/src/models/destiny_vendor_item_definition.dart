import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_vendor_item_quantity.dart';
import '../enums/destiny_vendor_item_refund_policy.dart';
import 'destiny_item_creation_entry_level_definition.dart';
import 'destiny_vendor_sale_item_action_block_definition.dart';
import '../enums/destiny_gating_scope.dart';
import '../enums/bungie_membership_type.dart';
import 'destiny_vendor_item_socket_override.dart';

part 'destiny_vendor_item_definition.g.dart';

/// This represents an item being sold by the vendor.
@JsonSerializable()
class DestinyVendorItemDefinition{	
	DestinyVendorItemDefinition();

	
	/// The index into the DestinyVendorDefinition.saleList. This is what we use to refer to items being sold throughout live and definition data.
	@JsonKey(name:'vendorItemIndex')
	int? vendorItemIndex;
	
	/// The hash identifier of the item being sold (DestinyInventoryItemDefinition).
	/// Note that a vendor can sell the same item in multiple ways, so don't assume that itemHash is a unique identifier for this entity.
	@JsonKey(name:'itemHash')
	int? itemHash;
	
	/// The amount you will recieve of the item described in itemHash if you make the purchase.
	@JsonKey(name:'quantity')
	int? quantity;
	
	/// An list of indexes into the DestinyVendorDefinition.failureStrings array, indicating the possible failure strings that can be relevant for this item.
	@JsonKey(name:'failureIndexes')
	List<int>? failureIndexes;
	
	/// This is a pre-compiled aggregation of item value and priceOverrideList, so that we have one place to check for what the purchaser must pay for the item. Use this instead of trying to piece together the price separately.
	/// The somewhat crappy part about this is that, now that item quantity overrides have dynamic modifiers, this will not necessarily be statically true. If you were using this instead of live data, switch to using live data.
	@JsonKey(name:'currencies')
	List<DestinyVendorItemQuantity>? currencies;
	
	/// If this item can be refunded, this is the policy for what will be refundd, how, and in what time period.
	@JsonKey(name:'refundPolicy',fromJson:decodeDestinyVendorItemRefundPolicy,toJson:encodeDestinyVendorItemRefundPolicy)
	DestinyVendorItemRefundPolicy? refundPolicy;
	
	/// The amount of time before refundability of the newly purchased item will expire.
	@JsonKey(name:'refundTimeLimit')
	int? refundTimeLimit;
	
	/// The Default level at which the item will spawn. Almost always driven by an adjusto these days. Ideally should be singular. It's a long story how this ended up as a list, but there is always either going to be 0:1 of these entities.
	@JsonKey(name:'creationLevels')
	List<DestinyItemCreationEntryLevelDefinition>? creationLevels;
	
	/// This is an index specifically into the display category, as opposed to the server-side Categories (which do not need to match or pair with each other in any way: server side categories are really just structures for common validation. Display Category will let us more easily categorize items visually)
	@JsonKey(name:'displayCategoryIndex')
	int? displayCategoryIndex;
	
	/// The index into the DestinyVendorDefinition.categories array, so you can find the category associated with this item.
	@JsonKey(name:'categoryIndex')
	int? categoryIndex;
	
	/// Same as above, but for the original category indexes.
	@JsonKey(name:'originalCategoryIndex')
	int? originalCategoryIndex;
	
	/// The minimum character level at which this item is available for sale.
	@JsonKey(name:'minimumLevel')
	int? minimumLevel;
	
	/// The maximum character level at which this item is available for sale.
	@JsonKey(name:'maximumLevel')
	int? maximumLevel;
	
	/// The action to be performed when purchasing the item, if it's not just "buy".
	@JsonKey(name:'action')
	DestinyVendorSaleItemActionBlockDefinition? action;
	
	/// The string identifier for the category selling this item.
	@JsonKey(name:'displayCategory')
	String? displayCategory;
	
	/// The inventory bucket into which this item will be placed upon purchase.
	@JsonKey(name:'inventoryBucketHash')
	int? inventoryBucketHash;
	
	/// The most restrictive scope that determines whether the item is available in the Vendor's inventory. See DestinyGatingScope's documentation for more information.
	/// This can be determined by Unlock gating, or by whether or not the item has purchase level requirements (minimumLevel and maximumLevel properties).
	@JsonKey(name:'visibilityScope',fromJson:decodeDestinyGatingScope,toJson:encodeDestinyGatingScope)
	DestinyGatingScope? visibilityScope;
	
	/// Similar to visibilityScope, it represents the most restrictive scope that determines whether the item can be purchased. It will at least be as restrictive as visibilityScope, but could be more restrictive if the item has additional purchase requirements beyond whether it is merely visible or not.
	/// See DestinyGatingScope's documentation for more information.
	@JsonKey(name:'purchasableScope',fromJson:decodeDestinyGatingScope,toJson:encodeDestinyGatingScope)
	DestinyGatingScope? purchasableScope;
	
	/// If this item can only be purchased by a given platform, this indicates the platform to which it is restricted.
	@JsonKey(name:'exclusivity',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? exclusivity;
	
	/// If this sale can only be performed as the result of an offer check, this is true.
	@JsonKey(name:'isOffer')
	bool? isOffer;
	
	/// If this sale can only be performed as the result of receiving a CRM offer, this is true.
	@JsonKey(name:'isCrm')
	bool? isCrm;
	
	/// *if* the category this item is in supports non-default sorting, this value should represent the sorting value to use, pre-processed and ready to go.
	@JsonKey(name:'sortValue')
	int? sortValue;
	
	/// If this item can expire, this is the tooltip message to show with its expiration info.
	@JsonKey(name:'expirationTooltip')
	String? expirationTooltip;
	
	/// If this is populated, the purchase of this item should redirect to purchasing these other items instead.
	@JsonKey(name:'redirectToSaleIndexes')
	List<int>? redirectToSaleIndexes;
	
	@JsonKey(name:'socketOverrides')
	List<DestinyVendorItemSocketOverride>? socketOverrides;
	
	/// If true, this item is some sort of dummy sale item that cannot actually be purchased. It may be a display only item, or some fluff left by a content designer for testing purposes, or something that got disabled because it was a terrible idea. You get the picture. We won't know *why* it can't be purchased, only that it can't be. Sorry.
	/// This is also only whether it's unpurchasable as a static property according to game content. There are other reasons why an item may or may not be purchasable at runtime, so even if this isn't set to True you should trust the runtime value for this sale item over the static definition if this is unset.
	@JsonKey(name:'unpurchasable')
	bool? unpurchasable;

	factory DestinyVendorItemDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorItemDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorItemDefinitionToJson(this);

	static Future<DestinyVendorItemDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorItemDefinition>((json)=>DestinyVendorItemDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}