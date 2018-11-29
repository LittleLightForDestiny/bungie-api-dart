import '../helpers/http.dart';
import '../responses/content_type_description_response.dart';
import '../responses/content_item_public_contract_response.dart';
import '../responses/search_result_of_content_item_public_contract_response.dart';
class Content{
    static Future<ContentTypeDescriptionResponse> getContentType (
        HttpClient client,
        String type,
    ) {
        Map<String, String> params = new Map();
        HttpClientConfig config = HttpClientConfig('GET', "/Content/GetContentType/${type}/", params);
        return client.request(config).then((response){
            return ContentTypeDescriptionResponse.fromJson(response);
        });
    }
    static Future<ContentItemPublicContractResponse> getContentById (
        HttpClient client,
        bool head,
        int id,
        String locale,
    ) {
        Map<String, String> params = new Map();
        params['head'] = "${ head }";
        HttpClientConfig config = HttpClientConfig('GET', "/Content/GetContentById/${id}/{locale}/", params);
        return client.request(config).then((response){
            return ContentItemPublicContractResponse.fromJson(response);
        });
    }
    static Future<ContentItemPublicContractResponse> getContentByTagAndType (
        HttpClient client,
        bool head,
        String locale,
        String tag,
        String type,
    ) {
        Map<String, String> params = new Map();
        params['head'] = "${ head }";
        HttpClientConfig config = HttpClientConfig('GET', "/Content/GetContentByTagAndType/${tag}/{type}/{locale}/", params);
        return client.request(config).then((response){
            return ContentItemPublicContractResponse.fromJson(response);
        });
    }
    static Future<SearchResultOfContentItemPublicContractResponse> searchContentWithText (
        HttpClient client,
        String ctype,
        int currentpage,
        bool head,
        String locale,
        String searchtext,
        String source,
        String tag,
    ) {
        Map<String, String> params = new Map();
        params['ctype'] = "${ ctype }";
        params['currentpage'] = "${ currentpage }";
        params['head'] = "${ head }";
        params['searchtext'] = "${ searchtext }";
        params['source'] = "${ source }";
        params['tag'] = "${ tag }";
        HttpClientConfig config = HttpClientConfig('GET', "/Content/Search/${locale}/", params);
        return client.request(config).then((response){
            return SearchResultOfContentItemPublicContractResponse.fromJson(response);
        });
    }
    static Future<SearchResultOfContentItemPublicContractResponse> searchContentByTagAndType (
        HttpClient client,
        int currentpage,
        bool head,
        int itemsperpage,
        String locale,
        String tag,
        String type,
    ) {
        Map<String, String> params = new Map();
        params['currentpage'] = "${ currentpage }";
        params['head'] = "${ head }";
        params['itemsperpage'] = "${ itemsperpage }";
        HttpClientConfig config = HttpClientConfig('GET', "/Content/SearchContentByTagAndType/${tag}/{type}/{locale}/", params);
        return client.request(config).then((response){
            return SearchResultOfContentItemPublicContractResponse.fromJson(response);
        });
    }
}