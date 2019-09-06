import 'destiny_plug_sets_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_plug_sets_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyPlugSetsComponent {

	/// Sockets may refer to a &quot;Plug Set&quot;: a set of reusable plugs that may be shared across multiple sockets (or even, in theory, multiple sockets over multiple items).
	/// This is the set of those plugs that we came across in the users&#39; inventory, along with the values for plugs in the set. Any given set in this component may be represented in Character and Profile-level, as some plugs may be Profile-level restricted, and some character-level restricted. (note that the ones that are even more specific will remain on the actual socket component itself, as they cannot be reused)
	@JsonKey(name:'data')
	DestinyPlugSetsComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyPlugSetsComponent();

	factory SingleComponentResponseOfDestinyPlugSetsComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyPlugSetsComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyPlugSetsComponentToJson(this);
}
