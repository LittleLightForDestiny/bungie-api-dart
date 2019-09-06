import '../helpers/http.dart';
import '../responses/trending_categories_response.dart';
import '../responses/search_result_of_trending_entry_response.dart';
import '../responses/trending_detail_response.dart';

class Trending {
  /// Returns trending items for Bungie.net, collapsed into the first page of items per category. For pagination within a category, call GetTrendingCategory.
  static Future<TrendingCategoriesResponse> getTrendingCategories(
    HttpClient client,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Trending/Categories/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return TrendingCategoriesResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Returns paginated lists of trending items for a category.
  static Future<SearchResultOfTrendingEntryResponse> getTrendingCategory(
    HttpClient client,
    String categoryId,
    int pageNumber,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Trending/Categories/${categoryId}/${pageNumber}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return SearchResultOfTrendingEntryResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
  /// Returns the detailed results for a specific trending entry. Note that trending entries are uniquely identified by a combination of *both* the TrendingEntryType *and* the identifier: the identifier alone is not guaranteed to be globally unique.
  static Future<TrendingDetailResponse> getTrendingEntryDetail(
    HttpClient client,
    String identifier,
    int trendingEntryType,
    Map<String, String> headers,
  ) {
    Map<String, dynamic> params = new Map();
    HttpClientConfig config = HttpClientConfig(
      'GET', 
      "/Trending/Details/${trendingEntryType}/${identifier}/",
    );
    config.bodyContentType = null;
    config.params = params;
    config.headers = headers;
    return client.request(config).then((response) {
      if (response.statusCode == 200) {
        return TrendingDetailResponse.fromJson(response.mappedBody);
      }
      throw Exception(response.mappedBody);
    });
  }
}
