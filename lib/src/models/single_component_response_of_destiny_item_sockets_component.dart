import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_sockets_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_item_sockets_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemSocketsComponent{
	
	SingleComponentResponseOfDestinyItemSocketsComponent();

	factory SingleComponentResponseOfDestinyItemSocketsComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$SingleComponentResponseOfDestinyItemSocketsComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Instanced items can have sockets, which are slots on the item where plugs can be inserted.
	/// Sockets are a bit complex: be sure to examine the documentation on the DestinyInventoryItemDefinition's "socket" block and elsewhere on these objects for more details.
	@JsonKey(name:'data')
	DestinyItemSocketsComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemSocketsComponentToJson(this);
}