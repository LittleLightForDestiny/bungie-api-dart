import 'package:json_annotation/json_annotation.dart';


part 'destiny_animation_reference.g.dart';

@JsonSerializable()
class DestinyAnimationReference{	
	DestinyAnimationReference();

	factory DestinyAnimationReference.fromJson(Map<String, dynamic> json) {
		return _$DestinyAnimationReferenceFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyAnimationReferenceToJson(this);
	
	@JsonKey(name:'animName')
	String? animName;
	
	@JsonKey(name:'animIdentifier')
	String? animIdentifier;
	
	@JsonKey(name:'path')
	String? path;
}