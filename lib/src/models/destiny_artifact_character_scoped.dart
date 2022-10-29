import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_artifact_tier.dart';

part 'destiny_artifact_character_scoped.g.dart';

@JsonSerializable()
class DestinyArtifactCharacterScoped{	
	DestinyArtifactCharacterScoped();

	
	@JsonKey(name:'artifactHash')
	int? artifactHash;
	
	@JsonKey(name:'pointsUsed')
	int? pointsUsed;
	
	@JsonKey(name:'resetCount')
	int? resetCount;
	
	@JsonKey(name:'tiers')
	List<DestinyArtifactTier>? tiers;

	factory DestinyArtifactCharacterScoped.fromJson(Map<String, dynamic> json) {
		return _$DestinyArtifactCharacterScopedFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyArtifactCharacterScopedToJson(this);

	static Future<DestinyArtifactCharacterScoped> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyArtifactCharacterScoped>((json)=>DestinyArtifactCharacterScoped.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}