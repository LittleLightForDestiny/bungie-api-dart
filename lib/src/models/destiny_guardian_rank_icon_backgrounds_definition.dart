import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_guardian_rank_icon_backgrounds_definition.g.dart';

@JsonSerializable()
class DestinyGuardianRankIconBackgroundsDefinition{	
	DestinyGuardianRankIconBackgroundsDefinition();

	
	@JsonKey(name:'backgroundEmptyBorderedImagePath')
	String? backgroundEmptyBorderedImagePath;
	
	@JsonKey(name:'backgroundEmptyBlueGradientBorderedImagePath')
	String? backgroundEmptyBlueGradientBorderedImagePath;
	
	@JsonKey(name:'backgroundFilledBlueBorderedImagePath')
	String? backgroundFilledBlueBorderedImagePath;
	
	@JsonKey(name:'backgroundFilledBlueGradientBorderedImagePath')
	String? backgroundFilledBlueGradientBorderedImagePath;
	
	@JsonKey(name:'backgroundFilledBlueLowAlphaImagePath')
	String? backgroundFilledBlueLowAlphaImagePath;
	
	@JsonKey(name:'backgroundFilledBlueMediumAlphaImagePath')
	String? backgroundFilledBlueMediumAlphaImagePath;
	
	@JsonKey(name:'backgroundFilledGrayMediumAlphaBorderedImagePath')
	String? backgroundFilledGrayMediumAlphaBorderedImagePath;
	
	@JsonKey(name:'backgroundFilledGrayHeavyAlphaBorderedImagePath')
	String? backgroundFilledGrayHeavyAlphaBorderedImagePath;
	
	@JsonKey(name:'backgroundFilledWhiteMediumAlphaImagePath')
	String? backgroundFilledWhiteMediumAlphaImagePath;
	
	@JsonKey(name:'backgroundFilledWhiteImagePath')
	String? backgroundFilledWhiteImagePath;
	
	@JsonKey(name:'backgroundPlateWhiteImagePath')
	String? backgroundPlateWhiteImagePath;
	
	@JsonKey(name:'backgroundPlateBlackImagePath')
	String? backgroundPlateBlackImagePath;
	
	@JsonKey(name:'backgroundPlateBlackAlphaImagePath')
	String? backgroundPlateBlackAlphaImagePath;

	factory DestinyGuardianRankIconBackgroundsDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyGuardianRankIconBackgroundsDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyGuardianRankIconBackgroundsDefinitionToJson(this);

	static Future<DestinyGuardianRankIconBackgroundsDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyGuardianRankIconBackgroundsDefinition>((json)=>DestinyGuardianRankIconBackgroundsDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}