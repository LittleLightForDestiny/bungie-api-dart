import '../helpers/http.dart';
import '../enums/bungie_membership_type.dart';
import '../enums/destiny_fireteam_finder_application_type.dart';
import '../models/destiny_fireteam_finder_bulk_get_listing_status_request.dart';
import '../models/destiny_fireteam_finder_host_lobby_request.dart';
import '../models/destiny_fireteam_finder_join_lobby_request.dart';
import '../models/destiny_fireteam_finder_kick_player_request.dart';
import '../models/destiny_fireteam_finder_respond_to_application_request.dart';
import '../models/destiny_fireteam_finder_respond_to_authentication_request.dart';
import '../models/destiny_fireteam_finder_respond_to_offer_request.dart';
import '../models/destiny_fireteam_finder_search_listings_by_clan_request.dart';
import '../models/destiny_fireteam_finder_search_listings_by_filters_request.dart';
import '../models/destiny_fireteam_finder_update_lobby_settings_request.dart';
import '../responses/boolean_response.dart';
import '../responses/destiny_fireteam_finder_apply_to_listing_response_response.dart';
import '../responses/destiny_fireteam_finder_bulk_get_listing_status_response_response.dart';
import '../responses/destiny_fireteam_finder_get_application_response_response.dart';
import '../responses/destiny_fireteam_finder_get_character_activity_access_response_response.dart';
import '../responses/destiny_fireteam_finder_get_listing_applications_response_response.dart';
import '../responses/destiny_fireteam_finder_get_lobby_offers_response_response.dart';
import '../responses/destiny_fireteam_finder_get_player_applications_response_response.dart';
import '../responses/destiny_fireteam_finder_get_player_lobbies_response_response.dart';
import '../responses/destiny_fireteam_finder_get_player_offers_response_response.dart';
import '../responses/destiny_fireteam_finder_host_lobby_response_response.dart';
import '../responses/destiny_fireteam_finder_listing_response.dart';
import '../responses/destiny_fireteam_finder_lobby_response_response.dart';
import '../responses/destiny_fireteam_finder_offer_response.dart';
import '../responses/destiny_fireteam_finder_respond_to_application_response_response.dart';
import '../responses/destiny_fireteam_finder_respond_to_authentication_response_response.dart';
import '../responses/destiny_fireteam_finder_respond_to_offer_response_response.dart';
import '../responses/destiny_fireteam_finder_search_listings_by_clan_response_response.dart';
import '../responses/destiny_fireteam_finder_search_listings_by_filters_response_response.dart';
import '../responses/destiny_fireteam_finder_update_lobby_settings_response_response.dart';
class FireteamFinder{
    /// Activates a lobby and initializes it as an active Fireteam.
    static Future<BooleanResponse> activateLobby (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        bool forceActivation,
        String lobbyId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final String _lobbyId = '$lobbyId';
        params['forceActivation'] = forceActivation;
        final HttpClientConfig config = HttpClientConfig('POST', '/FireteamFinder/Lobby/Activate/$_lobbyId/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Activates a lobby and initializes it as an active Fireteam, returning the updated Listing ID.
    static Future<BooleanResponse> activateLobbyForNewListingId (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        bool forceActivation,
        String lobbyId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final String _lobbyId = '$lobbyId';
        params['forceActivation'] = forceActivation;
        final HttpClientConfig config = HttpClientConfig('POST', '/FireteamFinder/Lobby/ActivateForNewListingId/$_lobbyId/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Applies to have a character join a fireteam.
    static Future<DestinyFireteamFinderApplyToListingResponseResponse> applyToListing (
        HttpClient client,
        DestinyFireteamFinderApplicationType applicationType,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        String listingId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _applicationType = '${applicationType.value}';
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final String _listingId = '$listingId';
        final HttpClientConfig config = HttpClientConfig('POST', '/FireteamFinder/Listing/$_listingId/Apply/$_applicationType/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderApplyToListingResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Retrieves Fireteam listing statuses in bulk.
    static Future<DestinyFireteamFinderBulkGetListingStatusResponseResponse> bulkGetListingStatus (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        DestinyFireteamFinderBulkGetListingStatusRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/FireteamFinder/Listing/BulkStatus/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderBulkGetListingStatusResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Retrieves a Fireteam application.
    static Future<DestinyFireteamFinderGetApplicationResponseResponse> getApplication (
        HttpClient client,
        String applicationId,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _applicationId = '$applicationId';
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/FireteamFinder/Application/$_applicationId/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderGetApplicationResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Retrieves a Fireteam listing.
    static Future<DestinyFireteamFinderListingResponse> getListing (
        HttpClient client,
        String listingId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _listingId = '$listingId';
        final HttpClientConfig config = HttpClientConfig('GET', '/FireteamFinder/Listing/$_listingId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderListingResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Retrieves all applications to a Fireteam Finder listing.
    static Future<DestinyFireteamFinderGetListingApplicationsResponseResponse> getListingApplications (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        String flags,
        String listingId,
        String nextPageToken,
        int pageSize,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final String _listingId = '$listingId';
        params['flags'] = flags;
        params['nextPageToken'] = nextPageToken;
        params['pageSize'] = pageSize;
        final HttpClientConfig config = HttpClientConfig('GET', '/FireteamFinder/Listing/$_listingId/Applications/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderGetListingApplicationsResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Retrieves the information for a Fireteam lobby.
    static Future<DestinyFireteamFinderLobbyResponseResponse> getLobby (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        String lobbyId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final String _lobbyId = '$lobbyId';
        final HttpClientConfig config = HttpClientConfig('GET', '/FireteamFinder/Lobby/$_lobbyId/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderLobbyResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Retrieves the information for a Fireteam lobby.
    static Future<DestinyFireteamFinderGetPlayerLobbiesResponseResponse> getPlayerLobbies (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        String nextPageToken,
        int pageSize,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        params['nextPageToken'] = nextPageToken;
        params['pageSize'] = pageSize;
        final HttpClientConfig config = HttpClientConfig('GET', '/FireteamFinder/PlayerLobbies/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderGetPlayerLobbiesResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Retrieves Fireteam applications that this player has sent or recieved.
    static Future<DestinyFireteamFinderGetPlayerApplicationsResponseResponse> getPlayerApplications (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        String nextPageToken,
        int pageSize,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        params['nextPageToken'] = nextPageToken;
        params['pageSize'] = pageSize;
        final HttpClientConfig config = HttpClientConfig('GET', '/FireteamFinder/PlayerApplications/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderGetPlayerApplicationsResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Retrieves Fireteam offers that this player has recieved.
    static Future<DestinyFireteamFinderGetPlayerOffersResponseResponse> getPlayerOffers (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        String nextPageToken,
        int pageSize,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        params['nextPageToken'] = nextPageToken;
        params['pageSize'] = pageSize;
        final HttpClientConfig config = HttpClientConfig('GET', '/FireteamFinder/PlayerOffers/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderGetPlayerOffersResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Retrieves the information for a Fireteam lobby.
    static Future<DestinyFireteamFinderGetCharacterActivityAccessResponseResponse> getCharacterActivityAccess (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final HttpClientConfig config = HttpClientConfig('GET', '/FireteamFinder/CharacterActivityAccess/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderGetCharacterActivityAccessResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Retrieves an offer to a Fireteam lobby.
    static Future<DestinyFireteamFinderOfferResponse> getOffer (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        String offerId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final String _offerId = '$offerId';
        final HttpClientConfig config = HttpClientConfig('GET', '/FireteamFinder/Offer/$_offerId/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderOfferResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Retrieves all offers relevant to a Fireteam lobby.
    static Future<DestinyFireteamFinderGetLobbyOffersResponseResponse> getLobbyOffers (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        String lobbyId,
        String nextPageToken,
        int pageSize,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final String _lobbyId = '$lobbyId';
        params['nextPageToken'] = nextPageToken;
        params['pageSize'] = pageSize;
        final HttpClientConfig config = HttpClientConfig('GET', '/FireteamFinder/Lobby/$_lobbyId/Offers/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderGetLobbyOffersResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Creates a new Fireteam lobby and Fireteam Finder listing.
    static Future<DestinyFireteamFinderHostLobbyResponseResponse> hostLobby (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        DestinyFireteamFinderHostLobbyRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/FireteamFinder/Lobby/Host/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderHostLobbyResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Sends a request to join an available Fireteam lobby.
    static Future<DestinyFireteamFinderLobbyResponseResponse> joinLobby (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        DestinyFireteamFinderJoinLobbyRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/FireteamFinder/Lobby/Join/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderLobbyResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Kicks a player from a Fireteam Finder lobby.
    static Future<BooleanResponse> kickPlayer (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        String lobbyId,
        String targetMembershipId,
        DestinyFireteamFinderKickPlayerRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final String _lobbyId = '$lobbyId';
        final String _targetMembershipId = '$targetMembershipId';
        final HttpClientConfig config = HttpClientConfig('POST', '/FireteamFinder/Lobby/$_lobbyId/KickPlayer/$_targetMembershipId/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Sends a request to leave a Fireteam listing application.
    static Future<BooleanResponse> leaveApplication (
        HttpClient client,
        String applicationId,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _applicationId = '$applicationId';
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/FireteamFinder/Application/Leave/$_applicationId/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Sends a request to leave a Fireteam lobby.
    static Future<BooleanResponse> leaveLobby (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        String lobbyId,
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final String _lobbyId = '$lobbyId';
        final HttpClientConfig config = HttpClientConfig('POST', '/FireteamFinder/Lobby/Leave/$_lobbyId/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.bodyContentType = null;
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return BooleanResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Responds to an application sent to a Fireteam lobby.
    static Future<DestinyFireteamFinderRespondToApplicationResponseResponse> respondToApplication (
        HttpClient client,
        String applicationId,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        DestinyFireteamFinderRespondToApplicationRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _applicationId = '$applicationId';
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/FireteamFinder/Application/Respond/$_applicationId/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderRespondToApplicationResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Responds to an authentication request for a Fireteam.
    static Future<DestinyFireteamFinderRespondToAuthenticationResponseResponse> respondToAuthentication (
        HttpClient client,
        String applicationId,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        DestinyFireteamFinderRespondToAuthenticationRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _applicationId = '$applicationId';
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/FireteamFinder/Authentication/Respond/$_applicationId/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderRespondToAuthenticationResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Responds to a Fireteam lobby offer.
    static Future<DestinyFireteamFinderRespondToOfferResponseResponse> respondToOffer (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        String offerId,
        DestinyFireteamFinderRespondToOfferRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final String _offerId = '$offerId';
        final HttpClientConfig config = HttpClientConfig('POST', '/FireteamFinder/Offer/Respond/$_offerId/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderRespondToOfferResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns search results for available Fireteams provided a clan.
    static Future<DestinyFireteamFinderSearchListingsByClanResponseResponse> searchListingsByClan (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        DestinyFireteamFinderSearchListingsByClanRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final HttpClientConfig config = HttpClientConfig('POST', '/FireteamFinder/Search/Clan/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderSearchListingsByClanResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Returns search results for available Fireteams provided search filters.
    static Future<DestinyFireteamFinderSearchListingsByFiltersResponseResponse> searchListingsByFilters (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        bool overrideOfflineFilter,
        DestinyFireteamFinderSearchListingsByFiltersRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        params['overrideOfflineFilter'] = overrideOfflineFilter;
        final HttpClientConfig config = HttpClientConfig('POST', '/FireteamFinder/Search/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderSearchListingsByFiltersResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
    /// Updates the settings for a Fireteam lobby.
    static Future<DestinyFireteamFinderUpdateLobbySettingsResponseResponse> updateLobbySettings (
        HttpClient client,
        String destinyCharacterId,
        String destinyMembershipId,
        BungieMembershipType destinyMembershipType,
        String lobbyId,
        DestinyFireteamFinderUpdateLobbySettingsRequest body
    ) async {
        final Map<String, dynamic> params = Map<String, dynamic>();
        final String _destinyCharacterId = '$destinyCharacterId';
        final String _destinyMembershipId = '$destinyMembershipId';
        final String _destinyMembershipType = '${destinyMembershipType.value}';
        final String _lobbyId = '$lobbyId';
        final HttpClientConfig config = HttpClientConfig('POST', '/FireteamFinder/Lobby/UpdateSettings/$_lobbyId/$_destinyMembershipType/$_destinyMembershipId/$_destinyCharacterId/', params);
        config.body = await body.asyncToJson();
        config.bodyContentType = 'application/json';
        final HttpResponse response = await client.request(config);
        if(response.statusCode == 200) {
            return DestinyFireteamFinderUpdateLobbySettingsResponseResponse.asyncFromJson(response.mappedBody);
        }
        throw Exception(response.mappedBody);
    }
}