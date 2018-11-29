import 'destiny_vendor_sale_item_set_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent{
	Map<DestinyVendorSaleItemSetComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent(
		Map<DestinyVendorSaleItemSetComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent fromJson(Map<String, dynamic> data){
		return new DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent> fromList(List<dynamic> data){
		List<DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent.fromJson(item));
    });
    return list;
	}
}