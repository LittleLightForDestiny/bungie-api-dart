import 'package:json_annotation/json_annotation.dart';


part 'hyperlink_reference.g.dart';

@JsonSerializable()
class HyperlinkReference{	
	HyperlinkReference();

	factory HyperlinkReference.fromJson(Map<String, dynamic> json) {
		return _$HyperlinkReferenceFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$HyperlinkReferenceToJson(this);
	
	@JsonKey(name:'title')
	String? title;
	
	@JsonKey(name:'url')
	String? url;
}