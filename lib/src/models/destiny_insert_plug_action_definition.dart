import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/socket_type_action_type.dart';

part 'destiny_insert_plug_action_definition.g.dart';

/// Data related to what happens while a plug is being inserted, mostly for UI purposes.
@JsonSerializable()
class DestinyInsertPlugActionDefinition{	
	DestinyInsertPlugActionDefinition();

	
	/// How long it takes for the Plugging of the item to be completed once it is initiated, if you care.
	@JsonKey(name:'actionExecuteSeconds')
	int? actionExecuteSeconds;
	
	/// The type of action being performed when you act on this Socket Type. The most common value is "insert plug", but there are others as well (for instance, a "Masterwork" socket may allow for Re-initialization, and an Infusion socket allows for items to be consumed to upgrade the item)
	@JsonKey(name:'actionType',fromJson:decodeSocketTypeActionType,toJson:encodeSocketTypeActionType)
	SocketTypeActionType? actionType;

	factory DestinyInsertPlugActionDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyInsertPlugActionDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyInsertPlugActionDefinitionToJson(this);

	static Future<DestinyInsertPlugActionDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyInsertPlugActionDefinition>((json)=>DestinyInsertPlugActionDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}