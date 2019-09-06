
import 'package:json_annotation/json_annotation.dart';
part 'dye_reference.g.dart';

@JsonSerializable()
class DyeReference {

	@JsonKey(name:'channelHash')
	int channelHash;

	@JsonKey(name:'dyeHash')
	int dyeHash;
	DyeReference();

	factory DyeReference.fromJson(Map<String, dynamic> json) => _$DyeReferenceFromJson(json);
	
	Map<String, dynamic> toJson() => _$DyeReferenceToJson(this);
}
