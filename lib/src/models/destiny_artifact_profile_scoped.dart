import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_progression.dart';

part 'destiny_artifact_profile_scoped.g.dart';

/// Represents a Seasonal Artifact and all data related to it for the requested Account.
/// It can be combined with Character-scoped data for a full picture of what a character has available&#x2F;has chosen, or just these settings can be used for overview information.
@JsonSerializable()
class DestinyArtifactProfileScoped{	
	DestinyArtifactProfileScoped();

	
	@JsonKey(name:'artifactHash')
	int? artifactHash;
	
	/// Information about a current character's status with a Progression. A progression is a value that can increase with activity and has levels. Think Character Level and Reputation Levels. Combine this "live" data with the related DestinyProgressionDefinition for a full picture of the Progression.
	@JsonKey(name:'pointProgression')
	DestinyProgression? pointProgression;
	
	@JsonKey(name:'pointsAcquired')
	int? pointsAcquired;
	
	/// Information about a current character's status with a Progression. A progression is a value that can increase with activity and has levels. Think Character Level and Reputation Levels. Combine this "live" data with the related DestinyProgressionDefinition for a full picture of the Progression.
	@JsonKey(name:'powerBonusProgression')
	DestinyProgression? powerBonusProgression;
	
	@JsonKey(name:'powerBonus')
	int? powerBonus;

	factory DestinyArtifactProfileScoped.fromJson(Map<String, dynamic> json) {
		return _$DestinyArtifactProfileScopedFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyArtifactProfileScopedToJson(this);

	static Future<DestinyArtifactProfileScoped> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyArtifactProfileScoped>((json)=>DestinyArtifactProfileScoped.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}