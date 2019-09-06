import 'destiny_profile_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_profile_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyProfileComponent {

	/// The most essential summary information about a Profile (in Destiny 1, we called these &quot;Accounts&quot;).
	@JsonKey(name:'data')
	DestinyProfileComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyProfileComponent();

	factory SingleComponentResponseOfDestinyProfileComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyProfileComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyProfileComponentToJson(this);
}
