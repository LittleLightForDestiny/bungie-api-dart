import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'trending_entry_destiny_item.g.dart';

@JsonSerializable()
class TrendingEntryDestinyItem{	
	TrendingEntryDestinyItem();

	
	@JsonKey(name:'itemHash')
	int? itemHash;

	factory TrendingEntryDestinyItem.fromJson(Map<String, dynamic> json) {
		return _$TrendingEntryDestinyItemFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TrendingEntryDestinyItemToJson(this);

	static Future<TrendingEntryDestinyItem> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, TrendingEntryDestinyItem>((json)=>TrendingEntryDestinyItem.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}