import 'destiny_vendor_category.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_categories_component.g.dart';

/// A vendor can have many categories of items that they sell. This component will return the category information for available items, as well as the index into those items in the user&#39;s sale item list.
/// Note that, since both the category and items are indexes, this data is Content Version dependent. Be sure to check that your content is up to date before using this data. This is an unfortunate, but permanent, limitation of Vendor data.
@JsonSerializable()
class DestinyVendorCategoriesComponent {

	/// The list of categories for items that the vendor sells, in rendering order.
	/// These categories each point to a &quot;display category&quot; in the displayCategories property of the DestinyVendorDefinition, as opposed to the other categories.
	@JsonKey(name:'categories')
	List<DestinyVendorCategory> categories;
	DestinyVendorCategoriesComponent();

	factory DestinyVendorCategoriesComponent.fromJson(Map<String, dynamic> json) => _$DestinyVendorCategoriesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorCategoriesComponentToJson(this);
}
