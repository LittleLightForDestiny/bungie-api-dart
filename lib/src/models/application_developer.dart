import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/developer_role.dart';
import 'user_info_card.dart';

part 'application_developer.g.dart';

@JsonSerializable()
class ApplicationDeveloper{	
	ApplicationDeveloper();

	
	@JsonKey(name:'role',fromJson:decodeDeveloperRole,toJson:encodeDeveloperRole)
	DeveloperRole? role;
	
	@JsonKey(name:'apiEulaVersion')
	int? apiEulaVersion;
	
	/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
	@JsonKey(name:'user')
	UserInfoCard? user;

	factory ApplicationDeveloper.fromJson(Map<String, dynamic> json) {
		return _$ApplicationDeveloperFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ApplicationDeveloperToJson(this);

	static Future<ApplicationDeveloper> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ApplicationDeveloper>((json)=>ApplicationDeveloper.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}