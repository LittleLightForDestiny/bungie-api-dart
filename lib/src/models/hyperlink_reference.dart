import 'package:json_annotation/json_annotation.dart';


part 'hyperlink_reference.g.dart';

@JsonSerializable()
class HyperlinkReference{
	
	HyperlinkReference();

	factory HyperlinkReference.fromJson(Map<String, dynamic> json) {
		try{
			return _$HyperlinkReferenceFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'title')
	String title;
	@JsonKey(name:'url')
	String url;

	
	
	Map<String, dynamic> toJson() => _$HyperlinkReferenceToJson(this);
}