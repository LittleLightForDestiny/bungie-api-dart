import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_loadout_item_component.g.dart';

@JsonSerializable()
class DestinyLoadoutItemComponent{	
	DestinyLoadoutItemComponent();

	
	@JsonKey(name:'itemInstanceId')
	String? itemInstanceId;
	
	@JsonKey(name:'plugItemHashes')
	List<int>? plugItemHashes;

	factory DestinyLoadoutItemComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyLoadoutItemComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyLoadoutItemComponentToJson(this);

	static Future<DestinyLoadoutItemComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyLoadoutItemComponent>((json)=>DestinyLoadoutItemComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}