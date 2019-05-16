import 'public_destiny_vendor_sale_item_set_component.dart';

/**  */
class DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent{
	
	/**  */
	Map<String, PublicDestinyVendorSaleItemSetComponent> data;
	
	/**  */
	int privacy;
	DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent(
				data['data'] != null ? Map<String, PublicDestinyVendorSaleItemSetComponent>.from(data['data'].map((k, v)=>MapEntry(k, PublicDestinyVendorSaleItemSetComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data != null? this.data.map((i, v)=>MapEntry(i, v.toMap())) : null;
			data['privacy'] = this.privacy;
		return data;
	}
}