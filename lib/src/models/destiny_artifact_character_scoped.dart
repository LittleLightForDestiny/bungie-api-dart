import 'destiny_artifact_tier.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_artifact_character_scoped.g.dart';

@JsonSerializable()
class DestinyArtifactCharacterScoped{
	
	@JsonKey(name:'artifactHash')
	int artifactHash;
	
	@JsonKey(name:'pointsUsed')
	int pointsUsed;
	
	@JsonKey(name:'resetCount')
	int resetCount;
	
	@JsonKey(name:'tiers')
	List<DestinyArtifactTier> tiers;
	DestinyArtifactCharacterScoped();

	factory DestinyArtifactCharacterScoped.fromJson(Map<String, dynamic> json) => _$DestinyArtifactCharacterScopedFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyArtifactCharacterScopedToJson(this);
}