import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'group_theme.g.dart';

@JsonSerializable()
class GroupTheme{	
	GroupTheme();

	
	@JsonKey(name:'name')
	String? name;
	
	@JsonKey(name:'folder')
	String? folder;
	
	@JsonKey(name:'description')
	String? description;

	factory GroupTheme.fromJson(Map<String, dynamic> json) {
		return _$GroupThemeFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupThemeToJson(this);

	static Future<GroupTheme> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupTheme>((json)=>GroupTheme.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}