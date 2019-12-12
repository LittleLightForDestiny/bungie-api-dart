import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_render_component.dart';

part 'single_component_response_of_destiny_item_render_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemRenderComponent{
	
	SingleComponentResponseOfDestinyItemRenderComponent();

	factory SingleComponentResponseOfDestinyItemRenderComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyItemRenderComponentFromJson(json);

	/// Many items can be rendered in 3D. When you request this block, you will obtain the custom data needed to render this specific instance of the item.
	@JsonKey(name:'data')
	DestinyItemRenderComponent data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemRenderComponentToJson(this);
}