import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'news_article_rss_item.g.dart';

@JsonSerializable()
class NewsArticleRssItem{	
	NewsArticleRssItem();

	
	@JsonKey(name:'Title')
	String? title;
	
	@JsonKey(name:'Link')
	String? link;
	
	@JsonKey(name:'PubDate')
	String? pubDate;
	
	@JsonKey(name:'UniqueIdentifier')
	String? uniqueIdentifier;
	
	@JsonKey(name:'Description')
	String? description;

	factory NewsArticleRssItem.fromJson(Map<String, dynamic> json) {
		return _$NewsArticleRssItemFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$NewsArticleRssItemToJson(this);

	static Future<NewsArticleRssItem> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, NewsArticleRssItem>((json)=>NewsArticleRssItem.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}