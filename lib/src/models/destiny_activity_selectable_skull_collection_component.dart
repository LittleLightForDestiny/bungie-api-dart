import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_activity_skull_component.dart';

part 'destiny_activity_selectable_skull_collection_component.g.dart';

@JsonSerializable()
class DestinyActivitySelectableSkullCollectionComponent{	
	DestinyActivitySelectableSkullCollectionComponent();

	
	@JsonKey(name:'selectableSkullCollectionHash')
	int? selectableSkullCollectionHash;
	
	@JsonKey(name:'selectableSkulls')
	List<DestinyActivitySkullComponent>? selectableSkulls;

	factory DestinyActivitySelectableSkullCollectionComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivitySelectableSkullCollectionComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivitySelectableSkullCollectionComponentToJson(this);

	static Future<DestinyActivitySelectableSkullCollectionComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivitySelectableSkullCollectionComponent>((json)=>DestinyActivitySelectableSkullCollectionComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}