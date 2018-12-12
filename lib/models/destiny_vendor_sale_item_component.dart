import 'destiny_item_quantity.dart';
import 'destiny_unlock_status.dart';
class DestinyVendorSaleItemComponent{
	int vendorItemIndex;
	int itemHash;
	int overrideStyleItemHash;
	int quantity;
	int saleStatus;
	List<DestinyItemQuantity> costs;
	List<int> requiredUnlocks;
	List<DestinyUnlockStatus> unlockStatuses;
	List<int> failureIndexes;
	int augments;
	String overrideNextRefreshDate;
	DestinyVendorSaleItemComponent(
		int this.vendorItemIndex,
		int this.itemHash,
		int this.overrideStyleItemHash,
		int this.quantity,
		int this.saleStatus,
		List<DestinyItemQuantity> this.costs,
		List<int> this.requiredUnlocks,
		List<DestinyUnlockStatus> this.unlockStatuses,
		List<int> this.failureIndexes,
		int this.augments,
		String this.overrideNextRefreshDate,
	);

	static DestinyVendorSaleItemComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorSaleItemComponent(
				data['vendorItemIndex'],
				data['itemHash'],
				data['overrideStyleItemHash'],
				data['quantity'],
				data['saleStatus'],
				DestinyItemQuantity.fromList(data['costs']),
				data['requiredUnlocks'],
				DestinyUnlockStatus.fromList(data['unlockStatuses']),
				data['failureIndexes'],
				data['augments'],
				data['overrideNextRefreshDate'],
		);
	}

	static List<DestinyVendorSaleItemComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorSaleItemComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorSaleItemComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorItemIndex'] = this.vendorItemIndex;
			data['itemHash'] = this.itemHash;
			data['overrideStyleItemHash'] = this.overrideStyleItemHash;
			data['quantity'] = this.quantity;
			data['saleStatus'] = this.saleStatus;
			data['costs'] = this.costs.map((item)=>item.toMap()).toList();
			data['requiredUnlocks'] = this.requiredUnlocks;
			data['unlockStatuses'] = this.unlockStatuses.map((item)=>item.toMap()).toList();
			data['failureIndexes'] = this.failureIndexes;
			data['augments'] = this.augments;
			data['overrideNextRefreshDate'] = this.overrideNextRefreshDate;
		return data;
	}
}