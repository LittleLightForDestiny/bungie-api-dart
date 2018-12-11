import 'single_component_response_of_destiny_vendor_component.dart';
import 'single_component_response_of_destiny_vendor_categories_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_vendor_sale_item_component.dart';
import 'destiny_item_component_set_ofint32.dart';
import 'single_component_response_of_destiny_currencies_component.dart';
class DestinyVendorResponse{
	SingleComponentResponseOfDestinyVendorComponent vendor;
	SingleComponentResponseOfDestinyVendorCategoriesComponent categories;
	DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent sales;
	DestinyItemComponentSetOfint32 itemComponents;
	SingleComponentResponseOfDestinyCurrenciesComponent currencyLookups;
	DestinyVendorResponse(
		SingleComponentResponseOfDestinyVendorComponent this.vendor,
		SingleComponentResponseOfDestinyVendorCategoriesComponent this.categories,
		DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent this.sales,
		DestinyItemComponentSetOfint32 this.itemComponents,
		SingleComponentResponseOfDestinyCurrenciesComponent this.currencyLookups,
	);

	static DestinyVendorResponse fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorResponse(
				data['vendor'],
				data['categories'],
				data['sales'],
				data['itemComponents'],
				data['currencyLookups'],
		);
	}

	static List<DestinyVendorResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorResponse.fromJson(item));
    });
    return list;
	}
}