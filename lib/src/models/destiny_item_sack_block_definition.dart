
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_sack_block_definition.g.dart';

/// Some items are &quot;sacks&quot; - they can be &quot;opened&quot; to produce other items. This is information related to its sack status, mostly UI strings. Engrams are an example of items that are considered to be &quot;Sacks&quot;.
@JsonSerializable()
class DestinyItemSackBlockDefinition {

	/// A description of what will happen when you open the sack. As far as I can tell, this is blank currently. Unknown whether it will eventually be populated with useful info.
	@JsonKey(name:'detailAction')
	String detailAction;

	/// The localized name of the action being performed when you open the sack.
	@JsonKey(name:'openAction')
	String openAction;

	@JsonKey(name:'selectItemCount')
	int selectItemCount;

	@JsonKey(name:'vendorSackType')
	String vendorSackType;

	@JsonKey(name:'openOnAcquire')
	bool openOnAcquire;
	DestinyItemSackBlockDefinition();

	factory DestinyItemSackBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemSackBlockDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemSackBlockDefinitionToJson(this);
}
