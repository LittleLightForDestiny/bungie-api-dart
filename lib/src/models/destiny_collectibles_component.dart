import 'package:json_annotation/json_annotation.dart';

import 'destiny_collectible_component.dart';

part 'destiny_collectibles_component.g.dart';

@JsonSerializable()
class DestinyCollectiblesComponent{
	
	DestinyCollectiblesComponent();

	factory DestinyCollectiblesComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyCollectiblesComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'collectibles')
	Map<String, DestinyCollectibleComponent> collectibles;

	
	
	Map<String, dynamic> toJson() => _$DestinyCollectiblesComponentToJson(this);
}