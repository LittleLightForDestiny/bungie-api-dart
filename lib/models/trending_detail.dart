import 'trending_entry_news.dart';
import 'trending_entry_support_article.dart';
import 'trending_entry_destiny_item.dart';
import 'trending_entry_destiny_activity.dart';
import 'trending_entry_destiny_ritual.dart';
import 'trending_entry_community_creation.dart';
import 'trending_entry_community_stream.dart';
class TrendingDetail{
	String identifier;
	int entityType;
	TrendingEntryNews news;
	TrendingEntrySupportArticle support;
	TrendingEntryDestinyItem destinyItem;
	TrendingEntryDestinyActivity destinyActivity;
	TrendingEntryDestinyRitual destinyRitual;
	TrendingEntryCommunityCreation creation;
	TrendingEntryCommunityStream stream;
	TrendingDetail(
		String this.identifier,
		int this.entityType,
		TrendingEntryNews this.news,
		TrendingEntrySupportArticle this.support,
		TrendingEntryDestinyItem this.destinyItem,
		TrendingEntryDestinyActivity this.destinyActivity,
		TrendingEntryDestinyRitual this.destinyRitual,
		TrendingEntryCommunityCreation this.creation,
		TrendingEntryCommunityStream this.stream,
	);

	static TrendingDetail fromJson(Map<String, dynamic> data){
		return new TrendingDetail(
				data['identifier'],
				data['entityType'],
				TrendingEntryNews.fromJson(data['news']),
				TrendingEntrySupportArticle.fromJson(data['support']),
				TrendingEntryDestinyItem.fromJson(data['destinyItem']),
				TrendingEntryDestinyActivity.fromJson(data['destinyActivity']),
				TrendingEntryDestinyRitual.fromJson(data['destinyRitual']),
				TrendingEntryCommunityCreation.fromJson(data['creation']),
				TrendingEntryCommunityStream.fromJson(data['stream']),
		);
	}

	static List<TrendingDetail> fromList(List<dynamic> data){
		List<TrendingDetail> list = new List();
    data.forEach((item) {
      list.add(TrendingDetail.fromJson(item));
    });
    return list;
	}
}