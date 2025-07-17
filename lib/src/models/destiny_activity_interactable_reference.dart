import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_interactable_reference.g.dart';

@JsonSerializable()
class DestinyActivityInteractableReference{	
	DestinyActivityInteractableReference();

	
	@JsonKey(name:'activityInteractableHash')
	int? activityInteractableHash;
	
	@JsonKey(name:'activityInteractableElementIndex')
	int? activityInteractableElementIndex;

	factory DestinyActivityInteractableReference.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityInteractableReferenceFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityInteractableReferenceToJson(this);

	static Future<DestinyActivityInteractableReference> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityInteractableReference>((json)=>DestinyActivityInteractableReference.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}