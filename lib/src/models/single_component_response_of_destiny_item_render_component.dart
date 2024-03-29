import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_render_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_item_render_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemRenderComponent{	
	SingleComponentResponseOfDestinyItemRenderComponent();

	
	/// Many items can be rendered in 3D. When you request this block, you will obtain the custom data needed to render this specific instance of the item.
	@JsonKey(name:'data')
	DestinyItemRenderComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyItemRenderComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyItemRenderComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemRenderComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyItemRenderComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyItemRenderComponent>((json)=>SingleComponentResponseOfDestinyItemRenderComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}