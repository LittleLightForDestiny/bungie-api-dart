import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_animation_reference.g.dart';

@JsonSerializable()
class DestinyAnimationReference{	
	DestinyAnimationReference();

	
	@JsonKey(name:'animName')
	String? animName;
	
	@JsonKey(name:'animIdentifier')
	String? animIdentifier;
	
	@JsonKey(name:'path')
	String? path;

	factory DestinyAnimationReference.fromJson(Map<String, dynamic> json) {
		return _$DestinyAnimationReferenceFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyAnimationReferenceToJson(this);

	static Future<DestinyAnimationReference> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyAnimationReference>((json)=>DestinyAnimationReference.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}