import 'package:json_annotation/json_annotation.dart';

import 'destiny_vendor_sale_item_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint32_and_destiny_vendor_sale_item_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent{
	
	DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent();

	factory DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyVendorSaleItemComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponentToJson(this);
}