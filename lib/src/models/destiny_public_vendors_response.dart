import 'single_component_response_of_destiny_vendor_group_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_public_vendor_component.dart';
import 'dictionary_component_response_ofuint32_and_destiny_vendor_categories_component.dart';
import 'dictionary_component_response_ofuint32_and_public_destiny_vendor_sale_item_set_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_public_vendors_response.g.dart';

/// A response containing all valid components for the public Vendors endpoint.
///  It is a decisively smaller subset of data compared to what we can get when we know the specific user making the request.
///  If you want any of the other data - item details, whether or not you can buy it, etc... you&#39;ll have to call in the context of a character. I know, sad but true.
@JsonSerializable()
class DestinyPublicVendorsResponse {

	/// For Vendors being returned, this will give you the information you need to group them and order them in the same way that the Bungie Companion app performs grouping. It will automatically be returned if you request the Vendors component.
	/// COMPONENT TYPE: Vendors
	@JsonKey(name:'vendorGroups')
	SingleComponentResponseOfDestinyVendorGroupComponent vendorGroups;

	/// The base properties of the vendor. These are keyed by the Vendor Hash, so you will get one Vendor Component per vendor returned.
	/// COMPONENT TYPE: Vendors
	@JsonKey(name:'vendors')
	DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent vendors;

	/// Categories that the vendor has available, and references to the sales therein. These are keyed by the Vendor Hash, so you will get one Categories Component per vendor returned.
	/// COMPONENT TYPE: VendorCategories
	@JsonKey(name:'categories')
	DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent categories;

	/// Sales, keyed by the vendorItemIndex of the item being sold. These are keyed by the Vendor Hash, so you will get one Sale Item Set Component per vendor returned.
	/// Note that within the Sale Item Set component, the sales are themselves keyed by the vendorSaleIndex, so you can relate it to the corrent sale item definition within the Vendor&#39;s definition.
	/// COMPONENT TYPE: VendorSales
	@JsonKey(name:'sales')
	DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent sales;
	DestinyPublicVendorsResponse();

	factory DestinyPublicVendorsResponse.fromJson(Map<String, dynamic> json) => _$DestinyPublicVendorsResponseFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPublicVendorsResponseToJson(this);
}
