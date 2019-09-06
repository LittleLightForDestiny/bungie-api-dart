
import 'package:json_annotation/json_annotation.dart';
part 'hyperlink_reference.g.dart';

@JsonSerializable()
class HyperlinkReference {

	@JsonKey(name:'title')
	String title;

	@JsonKey(name:'url')
	String url;
	HyperlinkReference();

	factory HyperlinkReference.fromJson(Map<String, dynamic> json) => _$HyperlinkReferenceFromJson(json);
	
	Map<String, dynamic> toJson() => _$HyperlinkReferenceToJson(this);
}
