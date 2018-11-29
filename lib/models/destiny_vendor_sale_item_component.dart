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

	static DestinyVendorSaleItemComponent fromJson(Map<String, dynamic> data){
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
		List<DestinyVendorSaleItemComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorSaleItemComponent.fromJson(item));
    });
    return list;
	}
}