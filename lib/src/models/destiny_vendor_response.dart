import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'single_component_response_of_destiny_vendor_component.dart';
import 'single_component_response_of_destiny_vendor_categories_component.dart';
import 'dictionary_component_response_ofint32_and_destiny_vendor_sale_item_component.dart';
import 'destiny_item_component_set_ofint32.dart';
import 'single_component_response_of_destiny_currencies_component.dart';
import 'single_component_response_of_destiny_string_variables_component.dart';

part 'destiny_vendor_response.g.dart';

/// A response containing all of the components for a vendor.
@JsonSerializable()
class DestinyVendorResponse{	
	DestinyVendorResponse();

	
	/// The base properties of the vendor.
	/// COMPONENT TYPE: Vendors
	@JsonKey(name:'vendor')
	SingleComponentResponseOfDestinyVendorComponent? vendor;
	
	/// Categories that the vendor has available, and references to the sales therein.
	/// COMPONENT TYPE: VendorCategories
	@JsonKey(name:'categories')
	SingleComponentResponseOfDestinyVendorCategoriesComponent? categories;
	
	/// Sales, keyed by the vendorItemIndex of the item being sold.
	/// COMPONENT TYPE: VendorSales
	@JsonKey(name:'sales')
	DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent? sales;
	
	/// Item components, keyed by the vendorItemIndex of the active sale items.
	/// COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.]
	@JsonKey(name:'itemComponents')
	DestinyItemComponentSetOfint32? itemComponents;
	
	/// A "lookup" convenience component that can be used to quickly check if the character has access to items that can be used for purchasing.
	/// COMPONENT TYPE: CurrencyLookups
	@JsonKey(name:'currencyLookups')
	SingleComponentResponseOfDestinyCurrenciesComponent? currencyLookups;
	
	/// A map of string variable values by hash for this character context.
	/// COMPONENT TYPE: StringVariables
	@JsonKey(name:'stringVariables')
	SingleComponentResponseOfDestinyStringVariablesComponent? stringVariables;

	factory DestinyVendorResponse.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorResponseToJson(this);

	static Future<DestinyVendorResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorResponse>((json)=>DestinyVendorResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}