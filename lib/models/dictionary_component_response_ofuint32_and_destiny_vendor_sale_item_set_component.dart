import 'destiny_vendor_sale_item_set_component.dart';

/*  */
class DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent{
	
	/*  */
	Map<String, DestinyVendorSaleItemSetComponent> data;
	
	/*  */
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent(
				data['data'] != null ? Map<String, DestinyVendorSaleItemSetComponent>.from(data['data'].map((k, v)=>MapEntry(k, DestinyVendorSaleItemSetComponent.fromMap(v)))) : null,
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
			data['data'] = this.data;
			data['privacy'] = this.privacy;
		return data;
	}
}