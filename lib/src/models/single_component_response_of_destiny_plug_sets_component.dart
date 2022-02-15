import 'package:json_annotation/json_annotation.dart';

import 'destiny_plug_sets_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_plug_sets_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyPlugSetsComponent{	
	SingleComponentResponseOfDestinyPlugSetsComponent();

	factory SingleComponentResponseOfDestinyPlugSetsComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyPlugSetsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyPlugSetsComponentToJson(this);
	
	/// Sockets may refer to a "Plug Set": a set of reusable plugs that may be shared across multiple sockets (or even, in theory, multiple sockets over multiple items).
	/// This is the set of those plugs that we came across in the users' inventory, along with the values for plugs in the set. Any given set in this component may be represented in Character and Profile-level, as some plugs may be Profile-level restricted, and some character-level restricted. (note that the ones that are even more specific will remain on the actual socket component itself, as they cannot be reused)
	@JsonKey(name:'data')
	DestinyPlugSetsComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;
}