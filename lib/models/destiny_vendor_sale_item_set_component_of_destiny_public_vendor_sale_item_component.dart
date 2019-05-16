import 'destiny_public_vendor_sale_item_component.dart';

/**  */
class DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent{
	
	/**  */
	Map<String, DestinyPublicVendorSaleItemComponent> saleItems;
	DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent(
		this.saleItems,
	);

	static DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent(
				data['saleItems'] != null ? Map<String, DestinyPublicVendorSaleItemComponent>.from(data['saleItems'].map((k, v)=>MapEntry(k, DestinyPublicVendorSaleItemComponent.fromMap(v)))) : null,
		);
	}

	static List<DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['saleItems'] = this.saleItems != null? this.saleItems.map((i, v)=>MapEntry(i, v.toMap())) : null;
		return data;
	}
}