import 'package:json_annotation/json_annotation.dart';


part 'destiny_item_plug_base.g.dart';

@JsonSerializable()
class DestinyItemPlugBase{
	
	DestinyItemPlugBase();

	factory DestinyItemPlugBase.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyItemPlugBaseFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The hash identifier of the DestinyInventoryItemDefinition that represents this plug.
	@JsonKey(name:'plugItemHash')
	int plugItemHash;
	/// If true, this plug has met all of its insertion requirements. Big if true.
	@JsonKey(name:'canInsert')
	bool canInsert;
	/// If true, this plug will provide its benefits while inserted.
	@JsonKey(name:'enabled')
	bool enabled;
	/// If the plug cannot be inserted for some reason, this will have the indexes into the plug item definition's plug.insertionRules property, so you can show the reasons why it can't be inserted.
	/// This list will be empty if the plug can be inserted.
	@JsonKey(name:'insertFailIndexes')
	List<int> insertFailIndexes;
	/// If a plug is not enabled, this will be populated with indexes into the plug item definition's plug.enabledRules property, so that you can show the reasons why it is not enabled.
	/// This list will be empty if the plug is enabled.
	@JsonKey(name:'enableFailIndexes')
	List<int> enableFailIndexes;

	
	
	Map<String, dynamic> toJson() => _$DestinyItemPlugBaseToJson(this);
}