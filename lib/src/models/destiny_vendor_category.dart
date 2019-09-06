
import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_category.g.dart';

/// Information about the category and items currently sold in that category.
@JsonSerializable()
class DestinyVendorCategory {

	/// An index into the DestinyVendorDefinition.displayCategories property, so you can grab the display data for this category.
	@JsonKey(name:'displayCategoryIndex')
	int displayCategoryIndex;

	/// An ordered list of indexes into items being sold in this category (DestinyVendorDefinition.itemList) which will contain more information about the items being sold themselves. Can also be used to index into DestinyVendorSaleItemComponent data, if you asked for that data to be returned.
	@JsonKey(name:'itemIndexes')
	List<int> itemIndexes;
	DestinyVendorCategory();

	factory DestinyVendorCategory.fromJson(Map<String, dynamic> json) => _$DestinyVendorCategoryFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorCategoryToJson(this);
}
