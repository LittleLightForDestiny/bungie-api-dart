import '../models/news_article_rss_response.dart';
import '../enums/platform_error_codes.dart';
import '../helpers/base_bungie_net_response.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

part 'news_article_rss_response_response.g.dart';

/// Look at the Response property for more information about the nature of this response
@JsonSerializable()
class NewsArticleRssResponseResponse extends BungieNetResponse<NewsArticleRssResponse> {
	NewsArticleRssResponseResponse({
		NewsArticleRssResponse? response,
		PlatformErrorCodes? errorCode,
		int? throttleSeconds,
		String? errorStatus,
		String? message,
		Map<String, String>? messageData,
		String? detailedErrorTrace,
	}):super(
		response:response,
		errorCode:errorCode,
		throttleSeconds:throttleSeconds,
		errorStatus:errorStatus,
		message:message,
		messageData:messageData,
		detailedErrorTrace:detailedErrorTrace,
	);

	factory NewsArticleRssResponseResponse.fromJson(Map<String, dynamic> json) => _$NewsArticleRssResponseResponseFromJson(json);

	Map<String, dynamic> toJson() => _$NewsArticleRssResponseResponseToJson(this);

	static Future<NewsArticleRssResponseResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, NewsArticleRssResponseResponse>((json)=>NewsArticleRssResponseResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}