import 'package:json_annotation/json_annotation.dart';

import 'destiny_inventory_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_inventory_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyInventoryComponent{
	
	DictionaryComponentResponseOfint64AndDestinyInventoryComponent();

	factory DictionaryComponentResponseOfint64AndDestinyInventoryComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DictionaryComponentResponseOfint64AndDestinyInventoryComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'data')
	Map<String, DestinyInventoryComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyInventoryComponentToJson(this);
}