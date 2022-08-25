import '../helpers/http.dart';
import '../enums/bungie_membership_type.dart';
import '../models/partner_offer_claim_request.dart';
import '../responses/boolean_response.dart';
import '../responses/celist_of_partner_offer_sku_history_response_response.dart';
import '../responses/dictionary_ofstring_and_bungie_reward_display_response.dart';
import '../responses/partner_reward_history_response_response.dart';
class Tokens{
    /// Twitch Drops self-repair function - scans twitch for drops not marked as fulfilled and resyncs them.
    static Future<BooleanResponse> forceDropsRepair (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('POST', '/Tokens/Partner/ForceDropsRepair/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Claim a partner offer as the authenticated user.
    static Future<BooleanResponse> claimPartnerOffer (
        HttpClient client,
        PartnerOfferClaimRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('POST', '/Tokens/Partner/ClaimOffer/', params);
        config.body = body.toJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Apply a partner offer to the targeted user. This endpoint does not claim a new offer, but any already claimed offers will be applied to the game if not already.
    static Future<BooleanResponse> applyMissingPartnerOffersWithoutClaim (
        HttpClient client,
        int partnerApplicationId,
        String targetBnetMembershipId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _partnerApplicationId = '$partnerApplicationId';
        final String _targetBnetMembershipId = '$targetBnetMembershipId';
        final HttpClientConfig config = HttpClientConfig('POST', '/Tokens/Partner/ApplyMissingOffers/$_partnerApplicationId/$_targetBnetMembershipId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns the partner sku and offer history of the targeted user. Elevated permissions are required to see users that are not yourself.
    static Future<CEListOfPartnerOfferSkuHistoryResponseResponse> getPartnerOfferSkuHistory (
        HttpClient client,
        int partnerApplicationId,
        String targetBnetMembershipId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _partnerApplicationId = '$partnerApplicationId';
        final String _targetBnetMembershipId = '$targetBnetMembershipId';
        final HttpClientConfig config = HttpClientConfig('GET', '/Tokens/Partner/History/$_partnerApplicationId/$_targetBnetMembershipId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return CEListOfPartnerOfferSkuHistoryResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns the partner rewards history of the targeted user, both partner offers and Twitch drops.
    static Future<PartnerRewardHistoryResponseResponse> getPartnerRewardHistory (
        HttpClient client,
        int partnerApplicationId,
        String targetBnetMembershipId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _partnerApplicationId = '$partnerApplicationId';
        final String _targetBnetMembershipId = '$targetBnetMembershipId';
        final HttpClientConfig config = HttpClientConfig('GET', '/Tokens/Partner/History/$_targetBnetMembershipId/Application/$_partnerApplicationId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return PartnerRewardHistoryResponseResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns the bungie rewards for the targeted user.
    static Future<DictionaryOfstringAndBungieRewardDisplayResponse> getBungieRewardsForUser (
        HttpClient client,
        String membershipId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _membershipId = '$membershipId';
        final HttpClientConfig config = HttpClientConfig('GET', '/Tokens/Rewards/GetRewardsForUser/$_membershipId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DictionaryOfstringAndBungieRewardDisplayResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns the bungie rewards for the targeted user when a platform membership Id and Type are used.
    static Future<DictionaryOfstringAndBungieRewardDisplayResponse> getBungieRewardsForPlatformUser (
        HttpClient client,
        String membershipId,
        BungieMembershipType membershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _membershipId = '$membershipId';
        final String _membershipType = '${membershipType.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/Tokens/Rewards/GetRewardsForPlatformUser/$_membershipId/$_membershipType/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DictionaryOfstringAndBungieRewardDisplayResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns a list of the current bungie rewards
    static Future<DictionaryOfstringAndBungieRewardDisplayResponse> getBungieRewardsList (
        HttpClient client,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final HttpClientConfig config = HttpClientConfig('GET', '/Tokens/Rewards/BungieRewards/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DictionaryOfstringAndBungieRewardDisplayResponse.fromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}