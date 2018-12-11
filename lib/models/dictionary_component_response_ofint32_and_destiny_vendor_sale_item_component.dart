import 'destiny_vendor_sale_item_component.dart';
class DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent{
	Map<DestinyVendorSaleItemComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent(
		Map<DestinyVendorSaleItemComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent.fromJson(item));
    });
    return list;
	}
}