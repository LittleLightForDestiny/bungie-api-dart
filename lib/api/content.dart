import '../helpers/http.dart';
import '../responses/content_item_public_contract_response.dart';
import '../responses/content_type_description_response.dart';
import '../responses/iread_only_collection_of_content_item_public_contract_response.dart';
import '../responses/search_result_of_content_item_public_contract_response.dart';
class Content{
    /// Gets an object describing a particular variant of content.
    static Future<ContentTypeDescriptionResponse> getContentType (
        HttpClient client,
        String type,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/Content/GetContentType/$type/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ContentTypeDescriptionResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns a content item referenced by id
    static Future<ContentItemPublicContractResponse> getContentById (
        HttpClient client,
        bool head,
        String id,
        String locale,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        params['head'] = head;
        final HttpClientConfig config = HttpClientConfig('GET', '/Content/GetContentById/$id/$locale/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ContentItemPublicContractResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns the newest item that matches a given tag and Content Type.
    static Future<ContentItemPublicContractResponse> getContentByTagAndType (
        HttpClient client,
        bool head,
        String locale,
        String tag,
        String type,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        params['head'] = head;
        final HttpClientConfig config = HttpClientConfig('GET', '/Content/GetContentByTagAndType/$tag/$type/$locale/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return ContentItemPublicContractResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Gets content based on querystring information passed in. Provides basic search and text search capabilities.
    static Future<SearchResultOfContentItemPublicContractResponse> searchContentWithText (
        HttpClient client,
        String ctype,
        int currentpage,
        bool head,
        String locale,
        String searchtext,
        String source,
        String tag,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        params['ctype'] = ctype;
        params['currentpage'] = currentpage;
        params['head'] = head;
        params['searchtext'] = searchtext;
        params['source'] = source;
        params['tag'] = tag;
        final HttpClientConfig config = HttpClientConfig('GET', '/Content/Search/$locale/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return SearchResultOfContentItemPublicContractResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Searches for Content Items that match the given Tag and Content Type.
    static Future<SearchResultOfContentItemPublicContractResponse> searchContentByTagAndType (
        HttpClient client,
        int currentpage,
        bool head,
        int itemsperpage,
        String locale,
        String tag,
        String type,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        params['currentpage'] = currentpage;
        params['head'] = head;
        params['itemsperpage'] = itemsperpage;
        final HttpClientConfig config = HttpClientConfig('GET', '/Content/SearchContentByTagAndType/$tag/$type/$locale/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return SearchResultOfContentItemPublicContractResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Search for Help Articles.
    static Future<IReadOnlyCollectionOfContentItemPublicContractResponse> searchHelpArticles (
        HttpClient client,
        String searchtext,
        String size,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/Content/SearchHelpArticles/$searchtext/$size', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return IReadOnlyCollectionOfContentItemPublicContractResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}