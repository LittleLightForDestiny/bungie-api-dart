import 'package:json_annotation/json_annotation.dart';

import 'destiny_artifact_tier.dart';

part 'destiny_artifact_character_scoped.g.dart';

@JsonSerializable()
class DestinyArtifactCharacterScoped{
	
	DestinyArtifactCharacterScoped();

	factory DestinyArtifactCharacterScoped.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyArtifactCharacterScopedFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'artifactHash')
	int artifactHash;
	@JsonKey(name:'pointsUsed')
	int pointsUsed;
	@JsonKey(name:'resetCount')
	int resetCount;
	@JsonKey(name:'tiers')
	List<DestinyArtifactTier> tiers;

	
	
	Map<String, dynamic> toJson() => _$DestinyArtifactCharacterScopedToJson(this);
}