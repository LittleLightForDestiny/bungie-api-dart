import 'package:json_annotation/json_annotation.dart';


part 'trending_entry_destiny_item.g.dart';

@JsonSerializable()
class TrendingEntryDestinyItem{
	
	TrendingEntryDestinyItem();

	factory TrendingEntryDestinyItem.fromJson(Map<String, dynamic> json) {
		try{
			return _$TrendingEntryDestinyItemFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'itemHash')
	int itemHash;

	
	
	Map<String, dynamic> toJson() => _$TrendingEntryDestinyItemToJson(this);
}