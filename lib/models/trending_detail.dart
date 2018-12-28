import 'trending_entry_news.dart';
import 'trending_entry_support_article.dart';
import 'trending_entry_destiny_item.dart';
import 'trending_entry_destiny_activity.dart';
import 'trending_entry_destiny_ritual.dart';
import 'trending_entry_community_creation.dart';
import 'trending_entry_community_stream.dart';

/*  */
class TrendingDetail{
	
	/*  */
	String identifier;
	
	/*  */
	int entityType;
	
	/*  */
	TrendingEntryNews news;
	
	/*  */
	TrendingEntrySupportArticle support;
	
	/*  */
	TrendingEntryDestinyItem destinyItem;
	
	/*  */
	TrendingEntryDestinyActivity destinyActivity;
	
	/*  */
	TrendingEntryDestinyRitual destinyRitual;
	
	/*  */
	TrendingEntryCommunityCreation creation;
	
	/*  */
	TrendingEntryCommunityStream stream;
	TrendingDetail(
		this.identifier,
		this.entityType,
		this.news,
		this.support,
		this.destinyItem,
		this.destinyActivity,
		this.destinyRitual,
		this.creation,
		this.stream,
	);

	static TrendingDetail fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingDetail(
				data['identifier'],
				data['entityType'],
				data['news'] != null ? TrendingEntryNews.fromMap(data['news']) : null,
				data['support'] != null ? TrendingEntrySupportArticle.fromMap(data['support']) : null,
				data['destinyItem'] != null ? TrendingEntryDestinyItem.fromMap(data['destinyItem']) : null,
				data['destinyActivity'] != null ? TrendingEntryDestinyActivity.fromMap(data['destinyActivity']) : null,
				data['destinyRitual'] != null ? TrendingEntryDestinyRitual.fromMap(data['destinyRitual']) : null,
				data['creation'] != null ? TrendingEntryCommunityCreation.fromMap(data['creation']) : null,
				data['stream'] != null ? TrendingEntryCommunityStream.fromMap(data['stream']) : null,
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
			data['identifier'] = this.identifier;
			data['entityType'] = this.entityType;
			data['news'] = this.news.toMap();
			data['support'] = this.support.toMap();
			data['destinyItem'] = this.destinyItem.toMap();
			data['destinyActivity'] = this.destinyActivity.toMap();
			data['destinyRitual'] = this.destinyRitual.toMap();
			data['creation'] = this.creation.toMap();
			data['stream'] = this.stream.toMap();
		return data;
	}
}