import 'single_component_response_of_destiny_vendor_group_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_vendor_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_vendor_categories_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_vendor_sale_item_set_component.dart';
import 'destiny_item_component_set_ofint32.dart';
import 'single_component_response_of_destiny_currencies_component.dart';
class DestinyVendorsResponse{
	SingleComponentResponseOfDestinyVendorGroupComponent vendorGroups;
	DictionaryComponentResponseOfuint32AndDestinyVendorComponent vendors;
	DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent categories;
	DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent sales;
	Map<String, DestinyItemComponentSetOfint32> itemComponents;
	SingleComponentResponseOfDestinyCurrenciesComponent currencyLookups;
	DestinyVendorsResponse(
		this.vendorGroups,
		this.vendors,
		this.categories,
		this.sales,
		this.itemComponents,
		this.currencyLookups,
	);

	static DestinyVendorsResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorsResponse(
				data['vendorGroups'] != null ? SingleComponentResponseOfDestinyVendorGroupComponent.fromMap(data['vendorGroups']) : null,
				data['vendors'] != null ? DictionaryComponentResponseOfuint32AndDestinyVendorComponent.fromMap(data['vendors']) : null,
				data['categories'] != null ? DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent.fromMap(data['categories']) : null,
				data['sales'] != null ? DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent.fromMap(data['sales']) : null,
				data['itemComponents'] != null ? Map<String, DestinyItemComponentSetOfint32>.from(data['itemComponents'].map((k, v)=>MapEntry(k, DestinyItemComponentSetOfint32.fromMap(v)))) : null,
				data['currencyLookups'] != null ? SingleComponentResponseOfDestinyCurrenciesComponent.fromMap(data['currencyLookups']) : null,
		);
	}

	static List<DestinyVendorsResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorsResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorsResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorGroups'] = this.vendorGroups;
			data['vendors'] = this.vendors;
			data['categories'] = this.categories;
			data['sales'] = this.sales;
			data['itemComponents'] = this.itemComponents;
			data['currencyLookups'] = this.currencyLookups;
		return data;
	}
}