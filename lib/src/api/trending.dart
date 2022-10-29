import '../helpers/http.dart';
import '../enums/trending_entry_type.dart';
import '../responses/search_result_of_trending_entry_response.dart';
import '../responses/trending_categories_response.dart';
import '../responses/trending_detail_response.dart';
class Trending{
    /// Returns trending items for Bungie.net, collapsed into the first page of items per category. For pagination within a category, call GetTrendingCategory.
    static Future<TrendingCategoriesResponse> getTrendingCategories (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/Trending/Categories/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return TrendingCategoriesResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns paginated lists of trending items for a category.
    static Future<SearchResultOfTrendingEntryResponse> getTrendingCategory (
        HttpClient client,
        String categoryId,
        int pageNumber,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _categoryId = '$categoryId';
        final String _pageNumber = '$pageNumber';
        final HttpClientConfig config = HttpClientConfig('GET', '/Trending/Categories/$_categoryId/$_pageNumber/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return SearchResultOfTrendingEntryResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns the detailed results for a specific trending entry. Note that trending entries are uniquely identified by a combination of *both* the TrendingEntryType *and* the identifier: the identifier alone is not guaranteed to be globally unique.
    static Future<TrendingDetailResponse> getTrendingEntryDetail (
        HttpClient client,
        String identifier,
        TrendingEntryType trendingEntryType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _identifier = '$identifier';
        final String _trendingEntryType = '${trendingEntryType.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/Trending/Details/$_trendingEntryType/$_identifier/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return TrendingDetailResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}