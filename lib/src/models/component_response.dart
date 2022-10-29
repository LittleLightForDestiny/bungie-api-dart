import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/component_privacy_setting.dart';

part 'component_response.g.dart';

/// The base class for any component-returning object that may need to indicate information about the state of the component being returned.
@JsonSerializable()
class ComponentResponse{	
	ComponentResponse();

	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory ComponentResponse.fromJson(Map<String, dynamic> json) {
		return _$ComponentResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ComponentResponseToJson(this);

	static Future<ComponentResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ComponentResponse>((json)=>ComponentResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}