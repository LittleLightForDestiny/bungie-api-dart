import 'package:json_annotation/json_annotation.dart';


part 'dye_reference.g.dart';

@JsonSerializable()
class DyeReference{
	
	DyeReference();

	factory DyeReference.fromJson(Map<String, dynamic> json) {
		return _$DyeReferenceFromJson(json);
	}

	@JsonKey(name:'channelHash')
	int? channelHash;
	@JsonKey(name:'dyeHash')
	int? dyeHash;

	
	
	Map<String, dynamic> toJson() => _$DyeReferenceToJson(this);
}