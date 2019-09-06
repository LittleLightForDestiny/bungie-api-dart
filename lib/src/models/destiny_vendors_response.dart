import 'single_component_response_of_destiny_vendor_group_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_vendor_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_vendor_categories_component.dart';
import 'dictionary_component_response_ofuint32_and_personal_destiny_vendor_sale_item_set_component.dart';
import 'destiny_item_component_set_ofint32.dart';
import 'single_component_response_of_destiny_currencies_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendors_response.g.dart';

/// A response containing all of the components for all requested vendors.
@JsonSerializable()
class DestinyVendorsResponse {

	/// For Vendors being returned, this will give you the information you need to group them and order them in the same way that the Bungie Companion app performs grouping. It will automatically be returned if you request the Vendors component.
	/// COMPONENT TYPE: Vendors
	@JsonKey(name:'vendorGroups')
	SingleComponentResponseOfDestinyVendorGroupComponent vendorGroups;

	/// The base properties of the vendor. These are keyed by the Vendor Hash, so you will get one Vendor Component per vendor returned.
	/// COMPONENT TYPE: Vendors
	@JsonKey(name:'vendors')
	DictionaryComponentResponseOfuint32AndDestinyVendorComponent vendors;

	/// Categories that the vendor has available, and references to the sales therein. These are keyed by the Vendor Hash, so you will get one Categories Component per vendor returned.
	/// COMPONENT TYPE: VendorCategories
	@JsonKey(name:'categories')
	DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent categories;

	/// Sales, keyed by the vendorItemIndex of the item being sold. These are keyed by the Vendor Hash, so you will get one Sale Item Set Component per vendor returned.
	/// Note that within the Sale Item Set component, the sales are themselves keyed by the vendorSaleIndex, so you can relate it to the corrent sale item definition within the Vendor&#39;s definition.
	/// COMPONENT TYPE: VendorSales
	@JsonKey(name:'sales')
	DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent sales;

	/// The set of item detail components, one set of item components per Vendor. These are keyed by the Vendor Hash, so you will get one Item Component Set per vendor returned.
	/// The components contained inside are themselves keyed by the vendorSaleIndex, and will have whatever item-level components you requested (Sockets, Stats, Instance data etc...) per item being sold by the vendor.
	@JsonKey(name:'itemComponents')
	Map<String, DestinyItemComponentSetOfint32> itemComponents;

	/// A &quot;lookup&quot; convenience component that can be used to quickly check if the character has access to items that can be used for purchasing.
	/// COMPONENT TYPE: CurrencyLookups
	@JsonKey(name:'currencyLookups')
	SingleComponentResponseOfDestinyCurrenciesComponent currencyLookups;
	DestinyVendorsResponse();

	factory DestinyVendorsResponse.fromJson(Map<String, dynamic> json) => _$DestinyVendorsResponseFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorsResponseToJson(this);
}
