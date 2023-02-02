import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'news_article_rss_item.dart';

part 'news_article_rss_response.g.dart';

@JsonSerializable()
class NewsArticleRssResponse{	
	NewsArticleRssResponse();

	
	@JsonKey(name:'NewsArticles')
	List<NewsArticleRssItem>? newsArticles;
	
	@JsonKey(name:'CurrentPaginationToken')
	int? currentPaginationToken;
	
	@JsonKey(name:'NextPaginationToken')
	int? nextPaginationToken;
	
	@JsonKey(name:'ResultCountThisPage')
	int? resultCountThisPage;
	
	@JsonKey(name:'CategoryFilter')
	String? categoryFilter;

	factory NewsArticleRssResponse.fromJson(Map<String, dynamic> json) {
		return _$NewsArticleRssResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$NewsArticleRssResponseToJson(this);

	static Future<NewsArticleRssResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, NewsArticleRssResponse>((json)=>NewsArticleRssResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}