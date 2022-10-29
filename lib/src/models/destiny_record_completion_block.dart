import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_record_toast_style.dart';

part 'destiny_record_completion_block.g.dart';

@JsonSerializable()
class DestinyRecordCompletionBlock{	
	DestinyRecordCompletionBlock();

	
	/// The number of objectives that must be completed before the objective is considered "complete"
	@JsonKey(name:'partialCompletionObjectiveCountThreshold')
	int? partialCompletionObjectiveCountThreshold;
	
	@JsonKey(name:'ScoreValue')
	int? scoreValue;
	
	@JsonKey(name:'shouldFireToast')
	bool? shouldFireToast;
	
	@JsonKey(name:'toastStyle',fromJson:decodeDestinyRecordToastStyle,toJson:encodeDestinyRecordToastStyle)
	DestinyRecordToastStyle? toastStyle;

	factory DestinyRecordCompletionBlock.fromJson(Map<String, dynamic> json) {
		return _$DestinyRecordCompletionBlockFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyRecordCompletionBlockToJson(this);

	static Future<DestinyRecordCompletionBlock> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyRecordCompletionBlock>((json)=>DestinyRecordCompletionBlock.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}