import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_record_toast_style.dart';

part 'destiny_record_completion_block.g.dart';

@JsonSerializable()
class DestinyRecordCompletionBlock{	
	DestinyRecordCompletionBlock();

	factory DestinyRecordCompletionBlock.fromJson(Map<String, dynamic> json) {
		return _$DestinyRecordCompletionBlockFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyRecordCompletionBlockToJson(this);
	
	/// The number of objectives that must be completed before the objective is considered "complete"
	@JsonKey(name:'partialCompletionObjectiveCountThreshold')
	int? partialCompletionObjectiveCountThreshold;
	
	@JsonKey(name:'ScoreValue')
	int? scoreValue;
	
	@JsonKey(name:'shouldFireToast')
	bool? shouldFireToast;
	
	@JsonKey(name:'toastStyle',unknownEnumValue:DestinyRecordToastStyle.ProtectedInvalidEnumValue)
	DestinyRecordToastStyle? toastStyle;
}