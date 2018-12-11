import 'destiny_vendor_sale_item_component.dart';
class DestinyVendorSaleItemSetComponent{
	Map<DestinyVendorSaleItemComponent, dynamic> saleItems;
	DestinyVendorSaleItemSetComponent(
		Map<DestinyVendorSaleItemComponent, dynamic> this.saleItems,
	);

	static DestinyVendorSaleItemSetComponent fromJson(Map<String, dynamic> data){
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
      list.add(DestinyVendorSaleItemSetComponent.fromJson(item));
    });
    return list;
	}
}