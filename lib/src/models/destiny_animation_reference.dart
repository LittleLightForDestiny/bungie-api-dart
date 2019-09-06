
import 'package:json_annotation/json_annotation.dart';
part 'destiny_animation_reference.g.dart';

@JsonSerializable()
class DestinyAnimationReference {

	@JsonKey(name:'animName')
	String animName;

	@JsonKey(name:'animIdentifier')
	String animIdentifier;

	@JsonKey(name:'path')
	String path;
	DestinyAnimationReference();

	factory DestinyAnimationReference.fromJson(Map<String, dynamic> json) => _$DestinyAnimationReferenceFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyAnimationReferenceToJson(this);
}
