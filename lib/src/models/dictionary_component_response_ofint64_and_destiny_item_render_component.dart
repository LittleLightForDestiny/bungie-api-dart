import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_render_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_item_render_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyItemRenderComponent{	
	DictionaryComponentResponseOfint64AndDestinyItemRenderComponent();

	factory DictionaryComponentResponseOfint64AndDestinyItemRenderComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyItemRenderComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyItemRenderComponentToJson(this);
	
	@JsonKey(name:'data')
	Map<String, DestinyItemRenderComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;
}