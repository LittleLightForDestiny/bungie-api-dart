import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'user_theme.g.dart';

@JsonSerializable()
class UserTheme{	
	UserTheme();

	
	@JsonKey(name:'userThemeId')
	int? userThemeId;
	
	@JsonKey(name:'userThemeName')
	String? userThemeName;
	
	@JsonKey(name:'userThemeDescription')
	String? userThemeDescription;

	factory UserTheme.fromJson(Map<String, dynamic> json) {
		return _$UserThemeFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$UserThemeToJson(this);

	static Future<UserTheme> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, UserTheme>((json)=>UserTheme.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}