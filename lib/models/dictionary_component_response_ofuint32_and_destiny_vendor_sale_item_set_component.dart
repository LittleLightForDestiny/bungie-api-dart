import 'destiny_vendor_sale_item_set_component.dart';
class DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent{
	Map<DestinyVendorSaleItemSetComponent, dynamic> data;
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent(
		Map<DestinyVendorSaleItemSetComponent, dynamic> this.data,
		int this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent(
				data['data'],
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = data;
			data['privacy'] = privacy;
	}
}