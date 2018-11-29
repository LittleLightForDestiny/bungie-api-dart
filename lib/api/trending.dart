import '../helpers/http.dart';
import '../responses/trending_categories_response.dart';
import '../responses/search_result_of_trending_entry_response.dart';
import '../responses/trending_detail_response.dart';
class Trending{
    static Future<TrendingCategoriesResponse> getTrendingCategories (
        HttpClient client,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Trending/Categories/", params);
        return client.request(config).then((response){
            return TrendingCategoriesResponse.fromJson(response);
        });
    }
    static Future<SearchResultOfTrendingEntryResponse> getTrendingCategory (
        HttpClient client,
        String categoryId,
        int pageNumber,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Trending/Categories/${categoryId}/{pageNumber}/", params);
        return client.request(config).then((response){
            return SearchResultOfTrendingEntryResponse.fromJson(response);
        });
    }
    static Future<TrendingDetailResponse> getTrendingEntryDetail (
        HttpClient client,
        String identifier,
        int trendingEntryType,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Trending/Details/${trendingEntryType}/{identifier}/", params);
        return client.request(config).then((response){
            return TrendingDetailResponse.fromJson(response);
        });
    }
}