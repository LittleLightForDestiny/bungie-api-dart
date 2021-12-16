import 'package:json_annotation/json_annotation.dart';


part 'destiny_collectible_acquisition_block.g.dart';

@JsonSerializable()
class DestinyCollectibleAcquisitionBlock{
	
	DestinyCollectibleAcquisitionBlock();

	factory DestinyCollectibleAcquisitionBlock.fromJson(Map<String, dynamic> json) {
		return _$DestinyCollectibleAcquisitionBlockFromJson(json);
	}

	@JsonKey(name:'acquireMaterialRequirementHash')
	int? acquireMaterialRequirementHash;
	@JsonKey(name:'acquireTimestampUnlockValueHash')
	int? acquireTimestampUnlockValueHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyCollectibleAcquisitionBlockToJson(this);
}