import '../helpers/http.dart';
import '../responses/cedictionary_ofstring_andstring_response.dart';
class GetAvailableLocales{
    /// List of available localization cultures
    static Future<CEDictionaryOfstringAndstringResponse> getAvailableLocales (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/GetAvailableLocales/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return CEDictionaryOfstringAndstringResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}