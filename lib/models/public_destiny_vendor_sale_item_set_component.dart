import 'destiny_public_vendor_sale_item_component.dart';

/**  */
class PublicDestinyVendorSaleItemSetComponent{
	
	/**  */
	Map<String, DestinyPublicVendorSaleItemComponent> saleItems;
	PublicDestinyVendorSaleItemSetComponent(
		this.saleItems,
	);

	static PublicDestinyVendorSaleItemSetComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new PublicDestinyVendorSaleItemSetComponent(
				data['saleItems'] != null ? Map<String, DestinyPublicVendorSaleItemComponent>.from(data['saleItems'].map((k, v)=>MapEntry(k, DestinyPublicVendorSaleItemComponent.fromMap(v)))) : null,
		);
	}

	static List<PublicDestinyVendorSaleItemSetComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<PublicDestinyVendorSaleItemSetComponent> list = new List();
    data.forEach((item) {
      list.add(PublicDestinyVendorSaleItemSetComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['saleItems'] = this.saleItems != null? this.saleItems.map((i, v)=>MapEntry(i, v.toMap())) : null;
		return data;
	}
}