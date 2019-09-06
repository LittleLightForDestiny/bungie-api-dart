import 'destiny_item_render_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_item_render_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemRenderComponent {

	/// Many items can be rendered in 3D. When you request this block, you will obtain the custom data needed to render this specific instance of the item.
	@JsonKey(name:'data')
	DestinyItemRenderComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyItemRenderComponent();

	factory SingleComponentResponseOfDestinyItemRenderComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyItemRenderComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemRenderComponentToJson(this);
}
