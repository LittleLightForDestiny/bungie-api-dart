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
	Map<DestinyItemComponentSetOfint32, dynamic> itemComponents;
	SingleComponentResponseOfDestinyCurrenciesComponent currencyLookups;
	DestinyVendorsResponse(
		SingleComponentResponseOfDestinyVendorGroupComponent this.vendorGroups,
		DictionaryComponentResponseOfuint32AndDestinyVendorComponent this.vendors,
		DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent this.categories,
		DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent this.sales,
		Map<DestinyItemComponentSetOfint32, dynamic> this.itemComponents,
		SingleComponentResponseOfDestinyCurrenciesComponent this.currencyLookups,
	);

	static DestinyVendorsResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorsResponse(
				data['vendorGroups'],
				data['vendors'],
				data['categories'],
				data['sales'],
				data['itemComponents'],
				data['currencyLookups'],
		);
	}

	static List<DestinyVendorsResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorsResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorsResponse.fromJson(item));
    });
    return list;
	}
}