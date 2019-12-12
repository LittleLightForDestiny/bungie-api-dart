import 'package:json_annotation/json_annotation.dart';


part 'gear_asset_data_base_definition.g.dart';

@JsonSerializable()
class GearAssetDataBaseDefinition{
	
	GearAssetDataBaseDefinition();

	factory GearAssetDataBaseDefinition.fromJson(Map<String, dynamic> json) => _$GearAssetDataBaseDefinitionFromJson(json);

	@JsonKey(name:'version')
	int version;
	@JsonKey(name:'path')
	String path;

	
	
	Map<String, dynamic> toJson() => _$GearAssetDataBaseDefinitionToJson(this);
}