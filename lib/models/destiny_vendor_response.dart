import 'single_component_response_of_destiny_vendor_component.dart';
import 'single_component_response_of_destiny_vendor_categories_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_vendor_sale_item_component.dart';
import 'destiny_item_component_set_ofint32.dart';
import 'single_component_response_of_destiny_currencies_component.dart';

/** A response containing all of the components for a vendor. */
class DestinyVendorResponse{
	
	/** The base properties of the vendor.
COMPONENT TYPE: Vendors */
	SingleComponentResponseOfDestinyVendorComponent vendor;
	
	/** Categories that the vendor has available, and references to the sales therein.
COMPONENT TYPE: VendorCategories */
	SingleComponentResponseOfDestinyVendorCategoriesComponent categories;
	
	/** Sales, keyed by the vendorItemIndex of the item being sold.
COMPONENT TYPE: VendorSales */
	DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent sales;
	
	/** Item components, keyed by the vendorItemIndex of the active sale items.
COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.] */
	DestinyItemComponentSetOfint32 itemComponents;
	
	/** A "lookup" convenience component that can be used to quickly check if the character has access to items that can be used for purchasing.
COMPONENT TYPE: CurrencyLookups */
	SingleComponentResponseOfDestinyCurrenciesComponent currencyLookups;
	DestinyVendorResponse(
		this.vendor,
		this.categories,
		this.sales,
		this.itemComponents,
		this.currencyLookups,
	);

	static DestinyVendorResponse fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorResponse(
				data['vendor'] != null ? SingleComponentResponseOfDestinyVendorComponent.fromMap(data['vendor']) : null,
				data['categories'] != null ? SingleComponentResponseOfDestinyVendorCategoriesComponent.fromMap(data['categories']) : null,
				data['sales'] != null ? DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent.fromMap(data['sales']) : null,
				data['itemComponents'] != null ? DestinyItemComponentSetOfint32.fromMap(data['itemComponents']) : null,
				data['currencyLookups'] != null ? SingleComponentResponseOfDestinyCurrenciesComponent.fromMap(data['currencyLookups']) : null,
		);
	}

	static List<DestinyVendorResponse> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorResponse> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorResponse.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendor'] = this.vendor;
			data['categories'] = this.categories;
			data['sales'] = this.sales;
			data['itemComponents'] = this.itemComponents;
			data['currencyLookups'] = this.currencyLookups;
		return data;
	}
}