import 'package:json_annotation/json_annotation.dart';

import 'destiny_character_render_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_character_render_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCharacterRenderComponent{
	
	SingleComponentResponseOfDestinyCharacterRenderComponent();

	factory SingleComponentResponseOfDestinyCharacterRenderComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$SingleComponentResponseOfDestinyCharacterRenderComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Only really useful if you're attempting to render the character's current appearance in 3D, this returns a bare minimum of information, pre-aggregated, that you'll need to perform that rendering. Note that you need to combine this with other 3D assets and data from our servers.
	/// Examine the Javascript returned by https://bungie.net/sharedbundle/spasm to see how we use this data, but be warned: the rabbit hole goes pretty deep.
	@JsonKey(name:'data')
	DestinyCharacterRenderComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCharacterRenderComponentToJson(this);
}