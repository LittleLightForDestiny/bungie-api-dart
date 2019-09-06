import 'destiny_item_quantity.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_sale_item_base_component.g.dart';

/// The base class for Vendor Sale Item data. Has a bunch of character-agnostic state about the item being sold.
/// Note that if you want instance, stats, etc... data for the item, you&#39;ll have to request additional components such as ItemInstances, ItemPerks etc... and acquire them from the DestinyVendorResponse&#39;s &quot;items&quot; property.
@JsonSerializable()
class DestinyVendorSaleItemBaseComponent {

	/// The index into the DestinyVendorDefinition.itemList property. Note that this means Vendor data *is* Content Version dependent: make sure you have the latest content before you use Vendor data, or these indexes may mismatch. 
	/// Most systems avoid this problem, but Vendors is one area where we are unable to reasonably avoid content dependency at the moment.
	@JsonKey(name:'vendorItemIndex')
	int vendorItemIndex;

	/// The hash of the item being sold, as a quick shortcut for looking up the DestinyInventoryItemDefinition of the sale item.
	@JsonKey(name:'itemHash')
	int itemHash;

	/// If populated, this is the hash of the item whose icon (and other secondary styles, but *not* the human readable strings) should override whatever icons&#x2F;styles are on the item being sold.
	/// If you don&#39;t do this, certain items whose styles are being overridden by socketed items - such as the &quot;Recycle Shader&quot; item - would show whatever their default icon&#x2F;style is, and it wouldn&#39;t be pretty or look accurate.
	@JsonKey(name:'overrideStyleItemHash')
	int overrideStyleItemHash;

	/// How much of the item you&#39;ll be getting.
	@JsonKey(name:'quantity')
	int quantity;

	/// A summary of the current costs of the item.
	@JsonKey(name:'costs')
	List<DestinyItemQuantity> costs;

	/// If this item has its own custom date where it may be removed from the Vendor&#39;s rotation, this is that date.
	/// Note that there&#39;s not actually any guarantee that it will go away: it could be chosen again and end up still being in the Vendor&#39;s sale items! But this is the next date where that test will occur, and is also the date that the game shows for availability on things like Bounties being sold. So it&#39;s the best we can give.
	@JsonKey(name:'overrideNextRefreshDate')
	String overrideNextRefreshDate;
	DestinyVendorSaleItemBaseComponent();

	factory DestinyVendorSaleItemBaseComponent.fromJson(Map<String, dynamic> json) => _$DestinyVendorSaleItemBaseComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorSaleItemBaseComponentToJson(this);
}
