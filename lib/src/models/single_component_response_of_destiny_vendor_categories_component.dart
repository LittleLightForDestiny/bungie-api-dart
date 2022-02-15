import 'package:json_annotation/json_annotation.dart';

import 'destiny_vendor_categories_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_vendor_categories_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyVendorCategoriesComponent{	
	SingleComponentResponseOfDestinyVendorCategoriesComponent();

	factory SingleComponentResponseOfDestinyVendorCategoriesComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyVendorCategoriesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyVendorCategoriesComponentToJson(this);
	
	/// A vendor can have many categories of items that they sell. This component will return the category information for available items, as well as the index into those items in the user's sale item list.
	/// Note that, since both the category and items are indexes, this data is Content Version dependent. Be sure to check that your content is up to date before using this data. This is an unfortunate, but permanent, limitation of Vendor data.
	@JsonKey(name:'data')
	DestinyVendorCategoriesComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;
}