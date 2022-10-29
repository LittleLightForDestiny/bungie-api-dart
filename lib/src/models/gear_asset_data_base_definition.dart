import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'gear_asset_data_base_definition.g.dart';

@JsonSerializable()
class GearAssetDataBaseDefinition{	
	GearAssetDataBaseDefinition();

	
	@JsonKey(name:'version')
	int? version;
	
	@JsonKey(name:'path')
	String? path;

	factory GearAssetDataBaseDefinition.fromJson(Map<String, dynamic> json) {
		return _$GearAssetDataBaseDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GearAssetDataBaseDefinitionToJson(this);

	static Future<GearAssetDataBaseDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GearAssetDataBaseDefinition>((json)=>GearAssetDataBaseDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}