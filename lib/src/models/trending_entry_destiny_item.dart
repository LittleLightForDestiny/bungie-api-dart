
import 'package:json_annotation/json_annotation.dart';
part 'trending_entry_destiny_item.g.dart';

@JsonSerializable()
class TrendingEntryDestinyItem {

	@JsonKey(name:'itemHash')
	int itemHash;
	TrendingEntryDestinyItem();

	factory TrendingEntryDestinyItem.fromJson(Map<String, dynamic> json) => _$TrendingEntryDestinyItemFromJson(json);
	
	Map<String, dynamic> toJson() => _$TrendingEntryDestinyItemToJson(this);
}
