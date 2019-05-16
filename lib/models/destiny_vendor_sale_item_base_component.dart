import 'destiny_item_quantity.dart';

/** The base class for Vendor Sale Item data. Has a bunch of character-agnostic state about the item being sold.
Note that if you want instance, stats, etc... data for the item, you'll have to request additional components such as ItemInstances, ItemPerks etc... and acquire them from the DestinyVendorResponse's "items" property. */
class DestinyVendorSaleItemBaseComponent{
	
	/** The index into the DestinyVendorDefinition.itemList property. Note that this means Vendor data *is* Content Version dependent: make sure you have the latest content before you use Vendor data, or these indexes may mismatch. 
Most systems avoid this problem, but Vendors is one area where we are unable to reasonably avoid content dependency at the moment. */
	int vendorItemIndex;
	
	/** The hash of the item being sold, as a quick shortcut for looking up the DestinyInventoryItemDefinition of the sale item. */
	int itemHash;
	
	/** If populated, this is the hash of the item whose icon (and other secondary styles, but *not* the human readable strings) should override whatever icons/styles are on the item being sold.
If you don't do this, certain items whose styles are being overridden by socketed items - such as the "Recycle Shader" item - would show whatever their default icon/style is, and it wouldn't be pretty or look accurate. */
	int overrideStyleItemHash;
	
	/** How much of the item you'll be getting. */
	int quantity;
	
	/** A summary of the current costs of the item. */
	List<DestinyItemQuantity> costs;
	
	/** If this item has its own custom date where it may be removed from the Vendor's rotation, this is that date.
Note that there's not actually any guarantee that it will go away: it could be chosen again and end up still being in the Vendor's sale items! But this is the next date where that test will occur, and is also the date that the game shows for availability on things like Bounties being sold. So it's the best we can give. */
	String overrideNextRefreshDate;
	DestinyVendorSaleItemBaseComponent(
		this.vendorItemIndex,
		this.itemHash,
		this.overrideStyleItemHash,
		this.quantity,
		this.costs,
		this.overrideNextRefreshDate,
	);

	static DestinyVendorSaleItemBaseComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorSaleItemBaseComponent(
				data['vendorItemIndex'],
				data['itemHash'],
				data['overrideStyleItemHash'],
				data['quantity'],
				data['costs'] != null ? DestinyItemQuantity.fromList(data['costs']) : null,
				data['overrideNextRefreshDate'],
		);
	}

	static List<DestinyVendorSaleItemBaseComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorSaleItemBaseComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorSaleItemBaseComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorItemIndex'] = this.vendorItemIndex;
			data['itemHash'] = this.itemHash;
			data['overrideStyleItemHash'] = this.overrideStyleItemHash;
			data['quantity'] = this.quantity;
			data['costs'] = this.costs != null? this.costs.map((item)=>item.toMap()).toList() : null;
			data['overrideNextRefreshDate'] = this.overrideNextRefreshDate;
		return data;
	}
}