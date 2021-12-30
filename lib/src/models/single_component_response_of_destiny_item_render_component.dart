import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_render_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_item_render_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemRenderComponent{	
	SingleComponentResponseOfDestinyItemRenderComponent();

	factory SingleComponentResponseOfDestinyItemRenderComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyItemRenderComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemRenderComponentToJson(this);
	
	/// Many items can be rendered in 3D. When you request this block, you will obtain the custom data needed to render this specific instance of the item.
	@JsonKey(name:'data')
	DestinyItemRenderComponent? data;
	
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;
}