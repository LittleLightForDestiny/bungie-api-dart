import 'destiny_vendor_categories_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_vendor_categories_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyVendorCategoriesComponent {

	/// A vendor can have many categories of items that they sell. This component will return the category information for available items, as well as the index into those items in the user&#39;s sale item list.
	/// Note that, since both the category and items are indexes, this data is Content Version dependent. Be sure to check that your content is up to date before using this data. This is an unfortunate, but permanent, limitation of Vendor data.
	@JsonKey(name:'data')
	DestinyVendorCategoriesComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyVendorCategoriesComponent();

	factory SingleComponentResponseOfDestinyVendorCategoriesComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyVendorCategoriesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyVendorCategoriesComponentToJson(this);
}
