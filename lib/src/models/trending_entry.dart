import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/trending_entry_type.dart';

part 'trending_entry.g.dart';

/// The list entry view for trending items. Returns just enough to show the item on the trending page.
@JsonSerializable()
class TrendingEntry{	
	TrendingEntry();

	
	/// The weighted score of this trending item.
	@JsonKey(name:'weight')
	double? weight;
	
	@JsonKey(name:'isFeatured')
	bool? isFeatured;
	
	/// We don't know whether the identifier will be a string, a uint, or a long... so we're going to cast it all to a string. But either way, we need any trending item created to have a single unique identifier for its type.
	@JsonKey(name:'identifier')
	String? identifier;
	
	/// An enum - unfortunately - dictating all of the possible kinds of trending items that you might get in your result set, in case you want to do custom rendering or call to get the details of the item.
	@JsonKey(name:'entityType',fromJson:decodeTrendingEntryType,toJson:encodeTrendingEntryType)
	TrendingEntryType? entityType;
	
	/// The localized "display name/article title/'primary localized identifier'" of the entity.
	@JsonKey(name:'displayName')
	String? displayName;
	
	/// If the entity has a localized tagline/subtitle/motto/whatever, that is found here.
	@JsonKey(name:'tagline')
	String? tagline;
	
	@JsonKey(name:'image')
	String? image;
	
	@JsonKey(name:'startDate')
	String? startDate;
	
	@JsonKey(name:'endDate')
	String? endDate;
	
	@JsonKey(name:'link')
	String? link;
	
	/// If this is populated, the entry has a related WebM video to show. I am 100% certain I am going to regret putting this directly on TrendingEntry, but it will work so yolo
	@JsonKey(name:'webmVideo')
	String? webmVideo;
	
	/// If this is populated, the entry has a related MP4 video to show. I am 100% certain I am going to regret putting this directly on TrendingEntry, but it will work so yolo
	@JsonKey(name:'mp4Video')
	String? mp4Video;
	
	/// If isFeatured, this image will be populated with whatever the featured image is. Note that this will likely be a very large image, so don't use it all the time.
	@JsonKey(name:'featureImage')
	String? featureImage;
	
	/// If the item is of entityType TrendingEntryType.Container, it may have items - also Trending Entries - contained within it. This is the ordered list of those to display under the Container's header.
	@JsonKey(name:'items')
	List<TrendingEntry>? items;
	
	/// If the entry has a date at which it was created, this is that date.
	@JsonKey(name:'creationDate')
	String? creationDate;

	factory TrendingEntry.fromJson(Map<String, dynamic> json) {
		return _$TrendingEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TrendingEntryToJson(this);

	static Future<TrendingEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, TrendingEntry>((json)=>TrendingEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}