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

	static TrendingDetail fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingDetail(
				data['identifier'],
				data['entityType'],
				TrendingEntryNews.fromMap(data['news']),
				TrendingEntrySupportArticle.fromMap(data['support']),
				TrendingEntryDestinyItem.fromMap(data['destinyItem']),
				TrendingEntryDestinyActivity.fromMap(data['destinyActivity']),
				TrendingEntryDestinyRitual.fromMap(data['destinyRitual']),
				TrendingEntryCommunityCreation.fromMap(data['creation']),
				TrendingEntryCommunityStream.fromMap(data['stream']),
		);
	}

	static List<TrendingDetail> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingDetail> list = new List();
    data.forEach((item) {
      list.add(TrendingDetail.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['identifier'] = identifier;
			data['entityType'] = entityType;
			data['news'] = news.toMap();
			data['support'] = support.toMap();
			data['destinyItem'] = destinyItem.toMap();
			data['destinyActivity'] = destinyActivity.toMap();
			data['destinyRitual'] = destinyRitual.toMap();
			data['creation'] = creation.toMap();
			data['stream'] = stream.toMap();
	}
}