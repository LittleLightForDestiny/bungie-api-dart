import 'destiny_vendor_sale_item_component.dart';
class DestinyVendorSaleItemSetComponent{
	Map<DestinyVendorSaleItemComponent, dynamic> saleItems;
	DestinyVendorSaleItemSetComponent(
		Map<DestinyVendorSaleItemComponent, dynamic> this.saleItems,
	);

	static DestinyVendorSaleItemSetComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorSaleItemSetComponent(
				data['saleItems'],
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
			data['saleItems'] = saleItems;
	}
}