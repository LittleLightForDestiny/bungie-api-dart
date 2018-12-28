import 'destiny_vendor_sale_item_component.dart';

/* The collection of all items currently being sold by a specific Vendor and visible to the given character for which the request was made. */
class DestinyVendorSaleItemSetComponent{
	
	/* The items being sold by this vendor, keyed by the vendorItemIndex of the item being sold. (because showing sale items depends on the ordering dictated by the categories being shown - see DestinyVendorCategoryComponent - this is a dictionary for quick lookup capability.) */
	Map<String, DestinyVendorSaleItemComponent> saleItems;
	DestinyVendorSaleItemSetComponent(
		this.saleItems,
	);

	static DestinyVendorSaleItemSetComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorSaleItemSetComponent(
				data['saleItems'] != null ? Map<String, DestinyVendorSaleItemComponent>.from(data['saleItems'].map((k, v)=>MapEntry(k, DestinyVendorSaleItemComponent.fromMap(v)))) : null,
		);
	}

	static List<DestinyVendorSaleItemSetComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorSaleItemSetComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorSaleItemSetComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['saleItems'] = this.saleItems;
		return data;
	}
}