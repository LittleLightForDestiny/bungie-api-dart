import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'hyperlink_reference.g.dart';

@JsonSerializable()
class HyperlinkReference{	
	HyperlinkReference();

	
	@JsonKey(name:'title')
	String? title;
	
	@JsonKey(name:'url')
	String? url;

	factory HyperlinkReference.fromJson(Map<String, dynamic> json) {
		return _$HyperlinkReferenceFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$HyperlinkReferenceToJson(this);

	static Future<HyperlinkReference> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, HyperlinkReference>((json)=>HyperlinkReference.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}