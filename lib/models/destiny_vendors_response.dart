import 'single_component_response_of_destiny_vendor_group_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_vendor_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_vendor_categories_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_vendor_sale_item_set_component.dart';
import 'destiny_item_component_set_ofint32.dart';
import 'single_component_response_of_destiny_currencies_component.dart';

/** A response containing all of the components for all requested vendors. */
class DestinyVendorsResponse{
	
	/** For Vendors being returned, this will give you the information you need to group them and order them in the same way that the Bungie Companion app performs grouping. It will automatically be returned if you request the Vendors component.
COMPONENT TYPE: Vendors */
	SingleComponentResponseOfDestinyVendorGroupComponent vendorGroups;
	
	/** The base properties of the vendor. These are keyed by the Vendor Hash, so you will get one Vendor Component per vendor returned.
COMPONENT TYPE: Vendors */
	DictionaryComponentResponseOfuint32AndDestinyVendorComponent vendors;
	
	/** Categories that the vendor has available, and references to the sales therein. These are keyed by the Vendor Hash, so you will get one Categories Component per vendor returned.
COMPONENT TYPE: VendorCategories */
	DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent categories;
	
	/** Sales, keyed by the vendorItemIndex of the item being sold. These are keyed by the Vendor Hash, so you will get one Sale Item Set Component per vendor returned.
Note that within the Sale Item Set component, the sales are themselves keyed by the vendorSaleIndex, so you can relate it to the corrent sale item definition within the Vendor's definition.
COMPONENT TYPE: VendorSales */
	DictionaryComponentResponseOfuint32AndDestinyVendorSaleItemSetComponent sales;
	
	/** The set of item detail components, one set of item components per Vendor. These are keyed by the Vendor Hash, so you will get one Item Component Set per vendor returned.
The components contained inside are themselves keyed by the vendorSaleIndex, and will have whatever item-level components you requested (Sockets, Stats, Instance data etc...) per item being sold by the vendor. */
	Map<String, DestinyItemComponentSetOfint32> itemComponents;
	
	/** A "lookup" convenience component that can be used to quickly check if the character has access to items that can be used for purchasing.
COMPONENT TYPE: CurrencyLookups */
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
			data['vendorGroups'] = this.vendorGroups != null? this.vendorGroups.toMap() : null;
			data['vendors'] = this.vendors != null? this.vendors.toMap() : null;
			data['categories'] = this.categories != null? this.categories.toMap() : null;
			data['sales'] = this.sales != null? this.sales.toMap() : null;
			data['itemComponents'] = this.itemComponents != null? this.itemComponents.map((i, v)=>MapEntry(i, v.toMap())) : null;
			data['currencyLookups'] = this.currencyLookups != null? this.currencyLookups.toMap() : null;
		return data;
	}
}