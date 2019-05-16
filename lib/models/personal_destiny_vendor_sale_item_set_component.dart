import 'destiny_vendor_sale_item_component.dart';

/**  */
class PersonalDestinyVendorSaleItemSetComponent{
	
	/**  */
	Map<String, DestinyVendorSaleItemComponent> saleItems;
	PersonalDestinyVendorSaleItemSetComponent(
		this.saleItems,
	);

	static PersonalDestinyVendorSaleItemSetComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new PersonalDestinyVendorSaleItemSetComponent(
				data['saleItems'] != null ? Map<String, DestinyVendorSaleItemComponent>.from(data['saleItems'].map((k, v)=>MapEntry(k, DestinyVendorSaleItemComponent.fromMap(v)))) : null,
		);
	}

	static List<PersonalDestinyVendorSaleItemSetComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<PersonalDestinyVendorSaleItemSetComponent> list = new List();
    data.forEach((item) {
      list.add(PersonalDestinyVendorSaleItemSetComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['saleItems'] = this.saleItems != null? this.saleItems.map((i, v)=>MapEntry(i, v.toMap())) : null;
		return data;
	}
}