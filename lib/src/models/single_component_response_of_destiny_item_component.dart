import 'destiny_item_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_item_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemComponent {

	/// The base item component, filled with properties that are generally useful to know in any item request or that don&#39;t feel worthwhile to put in their own component.
	@JsonKey(name:'data')
	DestinyItemComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyItemComponent();

	factory SingleComponentResponseOfDestinyItemComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyItemComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemComponentToJson(this);
}
