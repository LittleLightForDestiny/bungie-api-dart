import 'destiny_character_render_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_character_render_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCharacterRenderComponent {

	/// Only really useful if you&#39;re attempting to render the character&#39;s current appearance in 3D, this returns a bare minimum of information, pre-aggregated, that you&#39;ll need to perform that rendering. Note that you need to combine this with other 3D assets and data from our servers.
	/// Examine the Javascript returned by https:&#x2F;&#x2F;bungie.net&#x2F;sharedbundle&#x2F;spasm to see how we use this data, but be warned: the rabbit hole goes pretty deep.
	@JsonKey(name:'data')
	DestinyCharacterRenderComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyCharacterRenderComponent();

	factory SingleComponentResponseOfDestinyCharacterRenderComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyCharacterRenderComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCharacterRenderComponentToJson(this);
}
