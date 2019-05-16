import 'destiny_vendor_sale_item_component.dart';

/**  */
class DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent{
	
	/**  */
	Map<String, DestinyVendorSaleItemComponent> saleItems;
	DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent(
		this.saleItems,
	);

	static DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent(
				data['saleItems'] != null ? Map<String, DestinyVendorSaleItemComponent>.from(data['saleItems'].map((k, v)=>MapEntry(k, DestinyVendorSaleItemComponent.fromMap(v)))) : null,
		);
	}

	static List<DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['saleItems'] = this.saleItems != null? this.saleItems.map((i, v)=>MapEntry(i, v.toMap())) : null;
		return data;
	}
}