import 'personal_destiny_vendor_sale_item_set_component.dart';

/**  */
class DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent{
	
	/**  */
	Map<String, PersonalDestinyVendorSaleItemSetComponent> data;
	
	/**  */
	int privacy;
	DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent(
		this.data,
		this.privacy,
	);

	static DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent(
				data['data'] != null ? Map<String, PersonalDestinyVendorSaleItemSetComponent>.from(data['data'].map((k, v)=>MapEntry(k, PersonalDestinyVendorSaleItemSetComponent.fromMap(v)))) : null,
				data['privacy'],
		);
	}

	static List<DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent> list = new List();
    data.forEach((item) {
      list.add(DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent.fromMap(item));
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