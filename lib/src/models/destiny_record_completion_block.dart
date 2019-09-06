
import 'package:json_annotation/json_annotation.dart';
part 'destiny_record_completion_block.g.dart';

@JsonSerializable()
class DestinyRecordCompletionBlock {

	/// The number of objectives that must be completed before the objective is considered &quot;complete&quot;
	@JsonKey(name:'partialCompletionObjectiveCountThreshold')
	int partialCompletionObjectiveCountThreshold;

	@JsonKey(name:'ScoreValue')
	int scoreValue;

	@JsonKey(name:'shouldFireToast')
	bool shouldFireToast;

	@JsonKey(name:'toastStyle')
	int toastStyle;
	DestinyRecordCompletionBlock();

	factory DestinyRecordCompletionBlock.fromJson(Map<String, dynamic> json) => _$DestinyRecordCompletionBlockFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyRecordCompletionBlockToJson(this);
}
