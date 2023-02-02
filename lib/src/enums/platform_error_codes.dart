import 'package:json_annotation/json_annotation.dart';

enum PlatformErrorCodes {
  ///None = 0
  @JsonValue(0)
  None,
  ///Success = 1
  @JsonValue(1)
  Success,
  ///TransportException = 2
  @JsonValue(2)
  TransportException,
  ///UnhandledException = 3
  @JsonValue(3)
  UnhandledException,
  ///NotImplemented = 4
  @JsonValue(4)
  NotImplemented,
  ///SystemDisabled = 5
  @JsonValue(5)
  SystemDisabled,
  ///FailedToLoadAvailableLocalesConfiguration = 6
  @JsonValue(6)
  FailedToLoadAvailableLocalesConfiguration,
  ///ParameterParseFailure = 7
  @JsonValue(7)
  ParameterParseFailure,
  ///ParameterInvalidRange = 8
  @JsonValue(8)
  ParameterInvalidRange,
  ///BadRequest = 9
  @JsonValue(9)
  BadRequest,
  ///AuthenticationInvalid = 10
  @JsonValue(10)
  AuthenticationInvalid,
  ///DataNotFound = 11
  @JsonValue(11)
  DataNotFound,
  ///InsufficientPrivileges = 12
  @JsonValue(12)
  InsufficientPrivileges,
  ///Duplicate = 13
  @JsonValue(13)
  Duplicate,
  ///UnknownSqlResult = 14
  @JsonValue(14)
  UnknownSqlResult,
  ///ValidationError = 15
  @JsonValue(15)
  ValidationError,
  ///ValidationMissingFieldError = 16
  @JsonValue(16)
  ValidationMissingFieldError,
  ///ValidationInvalidInputError = 17
  @JsonValue(17)
  ValidationInvalidInputError,
  ///InvalidParameters = 18
  @JsonValue(18)
  InvalidParameters,
  ///ParameterNotFound = 19
  @JsonValue(19)
  ParameterNotFound,
  ///UnhandledHttpException = 20
  @JsonValue(20)
  UnhandledHttpException,
  ///NotFound = 21
  @JsonValue(21)
  NotFound,
  ///WebAuthModuleAsyncFailed = 22
  @JsonValue(22)
  WebAuthModuleAsyncFailed,
  ///InvalidReturnValue = 23
  @JsonValue(23)
  InvalidReturnValue,
  ///UserBanned = 24
  @JsonValue(24)
  UserBanned,
  ///InvalidPostBody = 25
  @JsonValue(25)
  InvalidPostBody,
  ///MissingPostBody = 26
  @JsonValue(26)
  MissingPostBody,
  ///ExternalServiceTimeout = 27
  @JsonValue(27)
  ExternalServiceTimeout,
  ///ValidationLengthError = 28
  @JsonValue(28)
  ValidationLengthError,
  ///ValidationRangeError = 29
  @JsonValue(29)
  ValidationRangeError,
  ///JsonDeserializationError = 30
  @JsonValue(30)
  JsonDeserializationError,
  ///ThrottleLimitExceeded = 31
  @JsonValue(31)
  ThrottleLimitExceeded,
  ///ValidationTagError = 32
  @JsonValue(32)
  ValidationTagError,
  ///ValidationProfanityError = 33
  @JsonValue(33)
  ValidationProfanityError,
  ///ValidationUrlFormatError = 34
  @JsonValue(34)
  ValidationUrlFormatError,
  ///ThrottleLimitExceededMinutes = 35
  @JsonValue(35)
  ThrottleLimitExceededMinutes,
  ///ThrottleLimitExceededMomentarily = 36
  @JsonValue(36)
  ThrottleLimitExceededMomentarily,
  ///ThrottleLimitExceededSeconds = 37
  @JsonValue(37)
  ThrottleLimitExceededSeconds,
  ///ExternalServiceUnknown = 38
  @JsonValue(38)
  ExternalServiceUnknown,
  ///ValidationWordLengthError = 39
  @JsonValue(39)
  ValidationWordLengthError,
  ///ValidationInvisibleUnicode = 40
  @JsonValue(40)
  ValidationInvisibleUnicode,
  ///ValidationBadNames = 41
  @JsonValue(41)
  ValidationBadNames,
  ///ExternalServiceFailed = 42
  @JsonValue(42)
  ExternalServiceFailed,
  ///ServiceRetired = 43
  @JsonValue(43)
  ServiceRetired,
  ///UnknownSqlException = 44
  @JsonValue(44)
  UnknownSqlException,
  ///UnsupportedLocale = 45
  @JsonValue(45)
  UnsupportedLocale,
  ///InvalidPageNumber = 46
  @JsonValue(46)
  InvalidPageNumber,
  ///MaximumPageSizeExceeded = 47
  @JsonValue(47)
  MaximumPageSizeExceeded,
  ///ServiceUnsupported = 48
  @JsonValue(48)
  ServiceUnsupported,
  ///ValidationMaximumUnicodeCombiningCharacters = 49
  @JsonValue(49)
  ValidationMaximumUnicodeCombiningCharacters,
  ///ValidationMaximumSequentialCarriageReturns = 50
  @JsonValue(50)
  ValidationMaximumSequentialCarriageReturns,
  ///PerEndpointRequestThrottleExceeded = 51
  @JsonValue(51)
  PerEndpointRequestThrottleExceeded,
  ///AuthContextCacheAssertion = 52
  @JsonValue(52)
  AuthContextCacheAssertion,
  ///ExPlatformStringValidationError = 53
  @JsonValue(53)
  ExPlatformStringValidationError,
  ///PerApplicationThrottleExceeded = 54
  @JsonValue(54)
  PerApplicationThrottleExceeded,
  ///PerApplicationAnonymousThrottleExceeded = 55
  @JsonValue(55)
  PerApplicationAnonymousThrottleExceeded,
  ///PerApplicationAuthenticatedThrottleExceeded = 56
  @JsonValue(56)
  PerApplicationAuthenticatedThrottleExceeded,
  ///PerUserThrottleExceeded = 57
  @JsonValue(57)
  PerUserThrottleExceeded,
  ///PayloadSignatureVerificationFailure = 58
  @JsonValue(58)
  PayloadSignatureVerificationFailure,
  ///InvalidServiceAuthContext = 59
  @JsonValue(59)
  InvalidServiceAuthContext,
  ///ObsoleteCredentialType = 89
  @JsonValue(89)
  ObsoleteCredentialType,
  ///UnableToUnPairMobileApp = 90
  @JsonValue(90)
  UnableToUnPairMobileApp,
  ///UnableToPairMobileApp = 91
  @JsonValue(91)
  UnableToPairMobileApp,
  ///CannotUseMobileAuthWithNonMobileProvider = 92
  @JsonValue(92)
  CannotUseMobileAuthWithNonMobileProvider,
  ///MissingDeviceCookie = 93
  @JsonValue(93)
  MissingDeviceCookie,
  ///FacebookTokenExpired = 94
  @JsonValue(94)
  FacebookTokenExpired,
  ///AuthTicketRequired = 95
  @JsonValue(95)
  AuthTicketRequired,
  ///CookieContextRequired = 96
  @JsonValue(96)
  CookieContextRequired,
  ///UnknownAuthenticationError = 97
  @JsonValue(97)
  UnknownAuthenticationError,
  ///BungieNetAccountCreationRequired = 98
  @JsonValue(98)
  BungieNetAccountCreationRequired,
  ///WebAuthRequired = 99
  @JsonValue(99)
  WebAuthRequired,
  ///ContentUnknownSqlResult = 100
  @JsonValue(100)
  ContentUnknownSqlResult,
  ///ContentNeedUniquePath = 101
  @JsonValue(101)
  ContentNeedUniquePath,
  ///ContentSqlException = 102
  @JsonValue(102)
  ContentSqlException,
  ///ContentNotFound = 103
  @JsonValue(103)
  ContentNotFound,
  ///ContentSuccessWithTagAddFail = 104
  @JsonValue(104)
  ContentSuccessWithTagAddFail,
  ///ContentSearchMissingParameters = 105
  @JsonValue(105)
  ContentSearchMissingParameters,
  ///ContentInvalidId = 106
  @JsonValue(106)
  ContentInvalidId,
  ///ContentPhysicalFileDeletionError = 107
  @JsonValue(107)
  ContentPhysicalFileDeletionError,
  ///ContentPhysicalFileCreationError = 108
  @JsonValue(108)
  ContentPhysicalFileCreationError,
  ///ContentPerforceSubmissionError = 109
  @JsonValue(109)
  ContentPerforceSubmissionError,
  ///ContentPerforceInitializationError = 110
  @JsonValue(110)
  ContentPerforceInitializationError,
  ///ContentDeploymentPackageNotReadyError = 111
  @JsonValue(111)
  ContentDeploymentPackageNotReadyError,
  ///ContentUploadFailed = 112
  @JsonValue(112)
  ContentUploadFailed,
  ///ContentTooManyResults = 113
  @JsonValue(113)
  ContentTooManyResults,
  ///ContentInvalidState = 115
  @JsonValue(115)
  ContentInvalidState,
  ///ContentNavigationParentNotFound = 116
  @JsonValue(116)
  ContentNavigationParentNotFound,
  ///ContentNavigationParentUpdateError = 117
  @JsonValue(117)
  ContentNavigationParentUpdateError,
  ///DeploymentPackageNotEditable = 118
  @JsonValue(118)
  DeploymentPackageNotEditable,
  ///ContentValidationError = 119
  @JsonValue(119)
  ContentValidationError,
  ///ContentPropertiesValidationError = 120
  @JsonValue(120)
  ContentPropertiesValidationError,
  ///ContentTypeNotFound = 121
  @JsonValue(121)
  ContentTypeNotFound,
  ///DeploymentPackageNotFound = 122
  @JsonValue(122)
  DeploymentPackageNotFound,
  ///ContentSearchInvalidParameters = 123
  @JsonValue(123)
  ContentSearchInvalidParameters,
  ///ContentItemPropertyAggregationError = 124
  @JsonValue(124)
  ContentItemPropertyAggregationError,
  ///DeploymentPackageFileNotFound = 125
  @JsonValue(125)
  DeploymentPackageFileNotFound,
  ///ContentPerforceFileHistoryNotFound = 126
  @JsonValue(126)
  ContentPerforceFileHistoryNotFound,
  ///ContentAssetZipCreationFailure = 127
  @JsonValue(127)
  ContentAssetZipCreationFailure,
  ///ContentAssetZipCreationBusy = 128
  @JsonValue(128)
  ContentAssetZipCreationBusy,
  ///ContentProjectNotFound = 129
  @JsonValue(129)
  ContentProjectNotFound,
  ///ContentFolderNotFound = 130
  @JsonValue(130)
  ContentFolderNotFound,
  ///ContentPackagesInconsistent = 131
  @JsonValue(131)
  ContentPackagesInconsistent,
  ///ContentPackagesInvalidState = 132
  @JsonValue(132)
  ContentPackagesInvalidState,
  ///ContentPackagesInconsistentType = 133
  @JsonValue(133)
  ContentPackagesInconsistentType,
  ///ContentCannotDeletePackage = 134
  @JsonValue(134)
  ContentCannotDeletePackage,
  ///ContentLockedForChanges = 135
  @JsonValue(135)
  ContentLockedForChanges,
  ///ContentFileUploadFailed = 136
  @JsonValue(136)
  ContentFileUploadFailed,
  ///ContentNotReviewed = 137
  @JsonValue(137)
  ContentNotReviewed,
  ///ContentPermissionDenied = 138
  @JsonValue(138)
  ContentPermissionDenied,
  ///ContentInvalidExternalUrl = 139
  @JsonValue(139)
  ContentInvalidExternalUrl,
  ///ContentExternalFileCannotBeImportedLocally = 140
  @JsonValue(140)
  ContentExternalFileCannotBeImportedLocally,
  ///ContentTagSaveFailure = 141
  @JsonValue(141)
  ContentTagSaveFailure,
  ///ContentPerforceUnmatchedFileError = 142
  @JsonValue(142)
  ContentPerforceUnmatchedFileError,
  ///ContentPerforceChangelistResultNotFound = 143
  @JsonValue(143)
  ContentPerforceChangelistResultNotFound,
  ///ContentPerforceChangelistFileItemsNotFound = 144
  @JsonValue(144)
  ContentPerforceChangelistFileItemsNotFound,
  ///ContentPerforceInvalidRevisionError = 145
  @JsonValue(145)
  ContentPerforceInvalidRevisionError,
  ///ContentUnloadedSaveResult = 146
  @JsonValue(146)
  ContentUnloadedSaveResult,
  ///ContentPropertyInvalidNumber = 147
  @JsonValue(147)
  ContentPropertyInvalidNumber,
  ///ContentPropertyInvalidUrl = 148
  @JsonValue(148)
  ContentPropertyInvalidUrl,
  ///ContentPropertyInvalidDate = 149
  @JsonValue(149)
  ContentPropertyInvalidDate,
  ///ContentPropertyInvalidSet = 150
  @JsonValue(150)
  ContentPropertyInvalidSet,
  ///ContentPropertyCannotDeserialize = 151
  @JsonValue(151)
  ContentPropertyCannotDeserialize,
  ///ContentRegexValidationFailOnProperty = 152
  @JsonValue(152)
  ContentRegexValidationFailOnProperty,
  ///ContentMaxLengthFailOnProperty = 153
  @JsonValue(153)
  ContentMaxLengthFailOnProperty,
  ///ContentPropertyUnexpectedDeserializationError = 154
  @JsonValue(154)
  ContentPropertyUnexpectedDeserializationError,
  ///ContentPropertyRequired = 155
  @JsonValue(155)
  ContentPropertyRequired,
  ///ContentCannotCreateFile = 156
  @JsonValue(156)
  ContentCannotCreateFile,
  ///ContentInvalidMigrationFile = 157
  @JsonValue(157)
  ContentInvalidMigrationFile,
  ///ContentMigrationAlteringProcessedItem = 158
  @JsonValue(158)
  ContentMigrationAlteringProcessedItem,
  ///ContentPropertyDefinitionNotFound = 159
  @JsonValue(159)
  ContentPropertyDefinitionNotFound,
  ///ContentReviewDataChanged = 160
  @JsonValue(160)
  ContentReviewDataChanged,
  ///ContentRollbackRevisionNotInPackage = 161
  @JsonValue(161)
  ContentRollbackRevisionNotInPackage,
  ///ContentItemNotBasedOnLatestRevision = 162
  @JsonValue(162)
  ContentItemNotBasedOnLatestRevision,
  ///ContentUnauthorized = 163
  @JsonValue(163)
  ContentUnauthorized,
  ///ContentCannotCreateDeploymentPackage = 164
  @JsonValue(164)
  ContentCannotCreateDeploymentPackage,
  ///ContentUserNotFound = 165
  @JsonValue(165)
  ContentUserNotFound,
  ///ContentLocalePermissionDenied = 166
  @JsonValue(166)
  ContentLocalePermissionDenied,
  ///ContentInvalidLinkToInternalEnvironment = 167
  @JsonValue(167)
  ContentInvalidLinkToInternalEnvironment,
  ///ContentInvalidBlacklistedContent = 168
  @JsonValue(168)
  ContentInvalidBlacklistedContent,
  ///ContentMacroMalformedNoContentId = 169
  @JsonValue(169)
  ContentMacroMalformedNoContentId,
  ///ContentMacroMalformedNoTemplateType = 170
  @JsonValue(170)
  ContentMacroMalformedNoTemplateType,
  ///ContentIllegalBNetMembershipId = 171
  @JsonValue(171)
  ContentIllegalBNetMembershipId,
  ///ContentLocaleDidNotMatchExpected = 172
  @JsonValue(172)
  ContentLocaleDidNotMatchExpected,
  ///ContentBabelCallFailed = 173
  @JsonValue(173)
  ContentBabelCallFailed,
  ///ContentEnglishPostLiveForbidden = 174
  @JsonValue(174)
  ContentEnglishPostLiveForbidden,
  ///ContentLocaleEditPermissionDenied = 175
  @JsonValue(175)
  ContentLocaleEditPermissionDenied,
  ///ContentStackUnknownError = 176
  @JsonValue(176)
  ContentStackUnknownError,
  ///ContentStackNotFound = 177
  @JsonValue(177)
  ContentStackNotFound,
  ///ContentStackRateLimited = 178
  @JsonValue(178)
  ContentStackRateLimited,
  ///ContentStackTimeout = 179
  @JsonValue(179)
  ContentStackTimeout,
  ///ContentStackServiceError = 180
  @JsonValue(180)
  ContentStackServiceError,
  ///ContentStackDeserializationFailure = 181
  @JsonValue(181)
  ContentStackDeserializationFailure,
  ///UserNonUniqueName = 200
  @JsonValue(200)
  UserNonUniqueName,
  ///UserManualLinkingStepRequired = 201
  @JsonValue(201)
  UserManualLinkingStepRequired,
  ///UserCreateUnknownSqlResult = 202
  @JsonValue(202)
  UserCreateUnknownSqlResult,
  ///UserCreateUnknownSqlException = 203
  @JsonValue(203)
  UserCreateUnknownSqlException,
  ///UserMalformedMembershipId = 204
  @JsonValue(204)
  UserMalformedMembershipId,
  ///UserCannotFindRequestedUser = 205
  @JsonValue(205)
  UserCannotFindRequestedUser,
  ///UserCannotLoadAccountCredentialLinkInfo = 206
  @JsonValue(206)
  UserCannotLoadAccountCredentialLinkInfo,
  ///UserInvalidMobileAppType = 207
  @JsonValue(207)
  UserInvalidMobileAppType,
  ///UserMissingMobilePairingInfo = 208
  @JsonValue(208)
  UserMissingMobilePairingInfo,
  ///UserCannotGenerateMobileKeyWhileUsingMobileCredential = 209
  @JsonValue(209)
  UserCannotGenerateMobileKeyWhileUsingMobileCredential,
  ///UserGenerateMobileKeyExistingSlotCollision = 210
  @JsonValue(210)
  UserGenerateMobileKeyExistingSlotCollision,
  ///UserDisplayNameMissingOrInvalid = 211
  @JsonValue(211)
  UserDisplayNameMissingOrInvalid,
  ///UserCannotLoadAccountProfileData = 212
  @JsonValue(212)
  UserCannotLoadAccountProfileData,
  ///UserCannotSaveUserProfileData = 213
  @JsonValue(213)
  UserCannotSaveUserProfileData,
  ///UserEmailMissingOrInvalid = 214
  @JsonValue(214)
  UserEmailMissingOrInvalid,
  ///UserTermsOfUseRequired = 215
  @JsonValue(215)
  UserTermsOfUseRequired,
  ///UserCannotCreateNewAccountWhileLoggedIn = 216
  @JsonValue(216)
  UserCannotCreateNewAccountWhileLoggedIn,
  ///UserCannotResolveCentralAccount = 217
  @JsonValue(217)
  UserCannotResolveCentralAccount,
  ///UserInvalidAvatar = 218
  @JsonValue(218)
  UserInvalidAvatar,
  ///UserMissingCreatedUserResult = 219
  @JsonValue(219)
  UserMissingCreatedUserResult,
  ///UserCannotChangeUniqueNameYet = 220
  @JsonValue(220)
  UserCannotChangeUniqueNameYet,
  ///UserCannotChangeDisplayNameYet = 221
  @JsonValue(221)
  UserCannotChangeDisplayNameYet,
  ///UserCannotChangeEmail = 222
  @JsonValue(222)
  UserCannotChangeEmail,
  ///UserUniqueNameMustStartWithLetter = 223
  @JsonValue(223)
  UserUniqueNameMustStartWithLetter,
  ///UserNoLinkedAccountsSupportFriendListings = 224
  @JsonValue(224)
  UserNoLinkedAccountsSupportFriendListings,
  ///UserAcknowledgmentTableFull = 225
  @JsonValue(225)
  UserAcknowledgmentTableFull,
  ///UserCreationDestinyMembershipRequired = 226
  @JsonValue(226)
  UserCreationDestinyMembershipRequired,
  ///UserFriendsTokenNeedsRefresh = 227
  @JsonValue(227)
  UserFriendsTokenNeedsRefresh,
  ///UserEmailValidationUnknown = 228
  @JsonValue(228)
  UserEmailValidationUnknown,
  ///UserEmailValidationLimit = 229
  @JsonValue(229)
  UserEmailValidationLimit,
  ///TransactionEmailSendFailure = 230
  @JsonValue(230)
  TransactionEmailSendFailure,
  ///MailHookPermissionFailure = 231
  @JsonValue(231)
  MailHookPermissionFailure,
  ///MailServiceRateLimit = 232
  @JsonValue(232)
  MailServiceRateLimit,
  ///UserEmailMustBeVerified = 233
  @JsonValue(233)
  UserEmailMustBeVerified,
  ///UserMustAllowCustomerServiceEmails = 234
  @JsonValue(234)
  UserMustAllowCustomerServiceEmails,
  ///NonTransactionalEmailSendFailure = 235
  @JsonValue(235)
  NonTransactionalEmailSendFailure,
  ///UnknownErrorSettingGlobalDisplayName = 236
  @JsonValue(236)
  UnknownErrorSettingGlobalDisplayName,
  ///DuplicateGlobalDisplayName = 237
  @JsonValue(237)
  DuplicateGlobalDisplayName,
  ///ErrorRunningNameValidationChecks = 238
  @JsonValue(238)
  ErrorRunningNameValidationChecks,
  ///ErrorDatabaseGlobalName = 239
  @JsonValue(239)
  ErrorDatabaseGlobalName,
  ///ErrorNoAvailableNameChanges = 240
  @JsonValue(240)
  ErrorNoAvailableNameChanges,
  ///ErrorNameAlreadySetToInput = 241
  @JsonValue(241)
  ErrorNameAlreadySetToInput,
  ///UserDisplayNameLessThanMinLength = 242
  @JsonValue(242)
  UserDisplayNameLessThanMinLength,
  ///UserDisplayNameGreaterThanMaxLength = 243
  @JsonValue(243)
  UserDisplayNameGreaterThanMaxLength,
  ///UserDisplayNameContainsUnacceptableOrInvalidContent = 244
  @JsonValue(244)
  UserDisplayNameContainsUnacceptableOrInvalidContent,
  ///MessagingUnknownError = 300
  @JsonValue(300)
  MessagingUnknownError,
  ///MessagingSelfError = 301
  @JsonValue(301)
  MessagingSelfError,
  ///MessagingSendThrottle = 302
  @JsonValue(302)
  MessagingSendThrottle,
  ///MessagingNoBody = 303
  @JsonValue(303)
  MessagingNoBody,
  ///MessagingTooManyUsers = 304
  @JsonValue(304)
  MessagingTooManyUsers,
  ///MessagingCanNotLeaveConversation = 305
  @JsonValue(305)
  MessagingCanNotLeaveConversation,
  ///MessagingUnableToSend = 306
  @JsonValue(306)
  MessagingUnableToSend,
  ///MessagingDeletedUserForbidden = 307
  @JsonValue(307)
  MessagingDeletedUserForbidden,
  ///MessagingCannotDeleteExternalConversation = 308
  @JsonValue(308)
  MessagingCannotDeleteExternalConversation,
  ///MessagingGroupChatDisabled = 309
  @JsonValue(309)
  MessagingGroupChatDisabled,
  ///MessagingMustIncludeSelfInPrivateMessage = 310
  @JsonValue(310)
  MessagingMustIncludeSelfInPrivateMessage,
  ///MessagingSenderIsBanned = 311
  @JsonValue(311)
  MessagingSenderIsBanned,
  ///MessagingGroupOptionalChatExceededMaximum = 312
  @JsonValue(312)
  MessagingGroupOptionalChatExceededMaximum,
  ///PrivateMessagingRequiresDestinyMembership = 313
  @JsonValue(313)
  PrivateMessagingRequiresDestinyMembership,
  ///AddSurveyAnswersUnknownSqlException = 400
  @JsonValue(400)
  AddSurveyAnswersUnknownSqlException,
  ///ForumBodyCannotBeEmpty = 500
  @JsonValue(500)
  ForumBodyCannotBeEmpty,
  ///ForumSubjectCannotBeEmptyOnTopicPost = 501
  @JsonValue(501)
  ForumSubjectCannotBeEmptyOnTopicPost,
  ///ForumCannotLocateParentPost = 502
  @JsonValue(502)
  ForumCannotLocateParentPost,
  ///ForumThreadLockedForReplies = 503
  @JsonValue(503)
  ForumThreadLockedForReplies,
  ///ForumUnknownSqlResultDuringCreatePost = 504
  @JsonValue(504)
  ForumUnknownSqlResultDuringCreatePost,
  ///ForumUnknownTagCreationError = 505
  @JsonValue(505)
  ForumUnknownTagCreationError,
  ///ForumUnknownSqlResultDuringTagItem = 506
  @JsonValue(506)
  ForumUnknownSqlResultDuringTagItem,
  ///ForumUnknownExceptionCreatePost = 507
  @JsonValue(507)
  ForumUnknownExceptionCreatePost,
  ///ForumQuestionMustBeTopicPost = 508
  @JsonValue(508)
  ForumQuestionMustBeTopicPost,
  ///ForumExceptionDuringTagSearch = 509
  @JsonValue(509)
  ForumExceptionDuringTagSearch,
  ///ForumExceptionDuringTopicRetrieval = 510
  @JsonValue(510)
  ForumExceptionDuringTopicRetrieval,
  ///ForumAliasedTagError = 511
  @JsonValue(511)
  ForumAliasedTagError,
  ///ForumCannotLocateThread = 512
  @JsonValue(512)
  ForumCannotLocateThread,
  ///ForumUnknownExceptionEditPost = 513
  @JsonValue(513)
  ForumUnknownExceptionEditPost,
  ///ForumCannotLocatePost = 514
  @JsonValue(514)
  ForumCannotLocatePost,
  ///ForumUnknownExceptionGetOrCreateTags = 515
  @JsonValue(515)
  ForumUnknownExceptionGetOrCreateTags,
  ///ForumEditPermissionDenied = 516
  @JsonValue(516)
  ForumEditPermissionDenied,
  ///ForumUnknownSqlResultDuringTagIdRetrieval = 517
  @JsonValue(517)
  ForumUnknownSqlResultDuringTagIdRetrieval,
  ///ForumCannotGetRating = 518
  @JsonValue(518)
  ForumCannotGetRating,
  ///ForumUnknownExceptionGetRating = 519
  @JsonValue(519)
  ForumUnknownExceptionGetRating,
  ///ForumRatingsAccessError = 520
  @JsonValue(520)
  ForumRatingsAccessError,
  ///ForumRelatedPostAccessError = 521
  @JsonValue(521)
  ForumRelatedPostAccessError,
  ///ForumLatestReplyAccessError = 522
  @JsonValue(522)
  ForumLatestReplyAccessError,
  ///ForumUserStatusAccessError = 523
  @JsonValue(523)
  ForumUserStatusAccessError,
  ///ForumAuthorAccessError = 524
  @JsonValue(524)
  ForumAuthorAccessError,
  ///ForumGroupAccessError = 525
  @JsonValue(525)
  ForumGroupAccessError,
  ///ForumUrlExpectedButMissing = 526
  @JsonValue(526)
  ForumUrlExpectedButMissing,
  ///ForumRepliesCannotBeEmpty = 527
  @JsonValue(527)
  ForumRepliesCannotBeEmpty,
  ///ForumRepliesCannotBeInDifferentGroups = 528
  @JsonValue(528)
  ForumRepliesCannotBeInDifferentGroups,
  ///ForumSubTopicCannotBeCreatedAtThisThreadLevel = 529
  @JsonValue(529)
  ForumSubTopicCannotBeCreatedAtThisThreadLevel,
  ///ForumCannotCreateContentTopic = 530
  @JsonValue(530)
  ForumCannotCreateContentTopic,
  ///ForumTopicDoesNotExist = 531
  @JsonValue(531)
  ForumTopicDoesNotExist,
  ///ForumContentCommentsNotAllowed = 532
  @JsonValue(532)
  ForumContentCommentsNotAllowed,
  ///ForumUnknownSqlResultDuringEditPost = 533
  @JsonValue(533)
  ForumUnknownSqlResultDuringEditPost,
  ///ForumUnknownSqlResultDuringGetPost = 534
  @JsonValue(534)
  ForumUnknownSqlResultDuringGetPost,
  ///ForumPostValidationBadUrl = 535
  @JsonValue(535)
  ForumPostValidationBadUrl,
  ///ForumBodyTooLong = 536
  @JsonValue(536)
  ForumBodyTooLong,
  ///ForumSubjectTooLong = 537
  @JsonValue(537)
  ForumSubjectTooLong,
  ///ForumAnnouncementNotAllowed = 538
  @JsonValue(538)
  ForumAnnouncementNotAllowed,
  ///ForumCannotShareOwnPost = 539
  @JsonValue(539)
  ForumCannotShareOwnPost,
  ///ForumEditNoOp = 540
  @JsonValue(540)
  ForumEditNoOp,
  ///ForumUnknownDatabaseErrorDuringGetPost = 541
  @JsonValue(541)
  ForumUnknownDatabaseErrorDuringGetPost,
  ///ForumExceeedMaximumRowLimit = 542
  @JsonValue(542)
  ForumExceeedMaximumRowLimit,
  ///ForumCannotSharePrivatePost = 543
  @JsonValue(543)
  ForumCannotSharePrivatePost,
  ///ForumCannotCrossPostBetweenGroups = 544
  @JsonValue(544)
  ForumCannotCrossPostBetweenGroups,
  ///ForumIncompatibleCategories = 555
  @JsonValue(555)
  ForumIncompatibleCategories,
  ///ForumCannotUseTheseCategoriesOnNonTopicPost = 556
  @JsonValue(556)
  ForumCannotUseTheseCategoriesOnNonTopicPost,
  ///ForumCanOnlyDeleteTopics = 557
  @JsonValue(557)
  ForumCanOnlyDeleteTopics,
  ///ForumDeleteSqlException = 558
  @JsonValue(558)
  ForumDeleteSqlException,
  ///ForumDeleteSqlUnknownResult = 559
  @JsonValue(559)
  ForumDeleteSqlUnknownResult,
  ///ForumTooManyTags = 560
  @JsonValue(560)
  ForumTooManyTags,
  ///ForumCanOnlyRateTopics = 561
  @JsonValue(561)
  ForumCanOnlyRateTopics,
  ///ForumBannedPostsCannotBeEdited = 562
  @JsonValue(562)
  ForumBannedPostsCannotBeEdited,
  ///ForumThreadRootIsBanned = 563
  @JsonValue(563)
  ForumThreadRootIsBanned,
  ///ForumCannotUseOfficialTagCategoryAsTag = 564
  @JsonValue(564)
  ForumCannotUseOfficialTagCategoryAsTag,
  ///ForumAnswerCannotBeMadeOnCreatePost = 565
  @JsonValue(565)
  ForumAnswerCannotBeMadeOnCreatePost,
  ///ForumAnswerCannotBeMadeOnEditPost = 566
  @JsonValue(566)
  ForumAnswerCannotBeMadeOnEditPost,
  ///ForumAnswerPostIdIsNotADirectReplyOfQuestion = 567
  @JsonValue(567)
  ForumAnswerPostIdIsNotADirectReplyOfQuestion,
  ///ForumAnswerTopicIdIsNotAQuestion = 568
  @JsonValue(568)
  ForumAnswerTopicIdIsNotAQuestion,
  ///ForumUnknownExceptionDuringMarkAnswer = 569
  @JsonValue(569)
  ForumUnknownExceptionDuringMarkAnswer,
  ///ForumUnknownSqlResultDuringMarkAnswer = 570
  @JsonValue(570)
  ForumUnknownSqlResultDuringMarkAnswer,
  ///ForumCannotRateYourOwnPosts = 571
  @JsonValue(571)
  ForumCannotRateYourOwnPosts,
  ///ForumPollsMustBeTheFirstPostInTopic = 572
  @JsonValue(572)
  ForumPollsMustBeTheFirstPostInTopic,
  ///ForumInvalidPollInput = 573
  @JsonValue(573)
  ForumInvalidPollInput,
  ///ForumGroupAdminEditNonMember = 574
  @JsonValue(574)
  ForumGroupAdminEditNonMember,
  ///ForumCannotEditModeratorEditedPost = 575
  @JsonValue(575)
  ForumCannotEditModeratorEditedPost,
  ///ForumRequiresDestinyMembership = 576
  @JsonValue(576)
  ForumRequiresDestinyMembership,
  ///ForumUnexpectedError = 577
  @JsonValue(577)
  ForumUnexpectedError,
  ///ForumAgeLock = 578
  @JsonValue(578)
  ForumAgeLock,
  ///ForumMaxPages = 579
  @JsonValue(579)
  ForumMaxPages,
  ///ForumMaxPagesOldestFirst = 580
  @JsonValue(580)
  ForumMaxPagesOldestFirst,
  ///ForumCannotApplyForumIdWithoutTags = 581
  @JsonValue(581)
  ForumCannotApplyForumIdWithoutTags,
  ///ForumCannotApplyForumIdToNonTopics = 582
  @JsonValue(582)
  ForumCannotApplyForumIdToNonTopics,
  ///ForumCannotDownvoteCommunityCreations = 583
  @JsonValue(583)
  ForumCannotDownvoteCommunityCreations,
  ///ForumTopicsMustHaveOfficialCategory = 584
  @JsonValue(584)
  ForumTopicsMustHaveOfficialCategory,
  ///ForumRecruitmentTopicMalformed = 585
  @JsonValue(585)
  ForumRecruitmentTopicMalformed,
  ///ForumRecruitmentTopicNotFound = 586
  @JsonValue(586)
  ForumRecruitmentTopicNotFound,
  ///ForumRecruitmentTopicNoSlotsRemaining = 587
  @JsonValue(587)
  ForumRecruitmentTopicNoSlotsRemaining,
  ///ForumRecruitmentTopicKickBan = 588
  @JsonValue(588)
  ForumRecruitmentTopicKickBan,
  ///ForumRecruitmentTopicRequirementsNotMet = 589
  @JsonValue(589)
  ForumRecruitmentTopicRequirementsNotMet,
  ///ForumRecruitmentTopicNoPlayers = 590
  @JsonValue(590)
  ForumRecruitmentTopicNoPlayers,
  ///ForumRecruitmentApproveFailMessageBan = 591
  @JsonValue(591)
  ForumRecruitmentApproveFailMessageBan,
  ///ForumRecruitmentGlobalBan = 592
  @JsonValue(592)
  ForumRecruitmentGlobalBan,
  ///ForumUserBannedFromThisTopic = 593
  @JsonValue(593)
  ForumUserBannedFromThisTopic,
  ///ForumRecruitmentFireteamMembersOnly = 594
  @JsonValue(594)
  ForumRecruitmentFireteamMembersOnly,
  ///ForumRequiresDestiny2Progress = 595
  @JsonValue(595)
  ForumRequiresDestiny2Progress,
  ///ForumRequiresDestiny2EntitlementPurchase = 596
  @JsonValue(596)
  ForumRequiresDestiny2EntitlementPurchase,
  ///GroupMembershipApplicationAlreadyResolved = 601
  @JsonValue(601)
  GroupMembershipApplicationAlreadyResolved,
  ///GroupMembershipAlreadyApplied = 602
  @JsonValue(602)
  GroupMembershipAlreadyApplied,
  ///GroupMembershipInsufficientPrivileges = 603
  @JsonValue(603)
  GroupMembershipInsufficientPrivileges,
  ///GroupIdNotReturnedFromCreation = 604
  @JsonValue(604)
  GroupIdNotReturnedFromCreation,
  ///GroupSearchInvalidParameters = 605
  @JsonValue(605)
  GroupSearchInvalidParameters,
  ///GroupMembershipPendingApplicationNotFound = 606
  @JsonValue(606)
  GroupMembershipPendingApplicationNotFound,
  ///GroupInvalidId = 607
  @JsonValue(607)
  GroupInvalidId,
  ///GroupInvalidMembershipId = 608
  @JsonValue(608)
  GroupInvalidMembershipId,
  ///GroupInvalidMembershipType = 609
  @JsonValue(609)
  GroupInvalidMembershipType,
  ///GroupMissingTags = 610
  @JsonValue(610)
  GroupMissingTags,
  ///GroupMembershipNotFound = 611
  @JsonValue(611)
  GroupMembershipNotFound,
  ///GroupInvalidRating = 612
  @JsonValue(612)
  GroupInvalidRating,
  ///GroupUserFollowingAccessError = 613
  @JsonValue(613)
  GroupUserFollowingAccessError,
  ///GroupUserMembershipAccessError = 614
  @JsonValue(614)
  GroupUserMembershipAccessError,
  ///GroupCreatorAccessError = 615
  @JsonValue(615)
  GroupCreatorAccessError,
  ///GroupAdminAccessError = 616
  @JsonValue(616)
  GroupAdminAccessError,
  ///GroupPrivatePostNotViewable = 617
  @JsonValue(617)
  GroupPrivatePostNotViewable,
  ///GroupMembershipNotLoggedIn = 618
  @JsonValue(618)
  GroupMembershipNotLoggedIn,
  ///GroupNotDeleted = 619
  @JsonValue(619)
  GroupNotDeleted,
  ///GroupUnknownErrorUndeletingGroup = 620
  @JsonValue(620)
  GroupUnknownErrorUndeletingGroup,
  ///GroupDeleted = 621
  @JsonValue(621)
  GroupDeleted,
  ///GroupNotFound = 622
  @JsonValue(622)
  GroupNotFound,
  ///GroupMemberBanned = 623
  @JsonValue(623)
  GroupMemberBanned,
  ///GroupMembershipClosed = 624
  @JsonValue(624)
  GroupMembershipClosed,
  ///GroupPrivatePostOverrideError = 625
  @JsonValue(625)
  GroupPrivatePostOverrideError,
  ///GroupNameTaken = 626
  @JsonValue(626)
  GroupNameTaken,
  ///GroupDeletionGracePeriodExpired = 627
  @JsonValue(627)
  GroupDeletionGracePeriodExpired,
  ///GroupCannotCheckBanStatus = 628
  @JsonValue(628)
  GroupCannotCheckBanStatus,
  ///GroupMaximumMembershipCountReached = 629
  @JsonValue(629)
  GroupMaximumMembershipCountReached,
  ///NoDestinyAccountForClanPlatform = 630
  @JsonValue(630)
  NoDestinyAccountForClanPlatform,
  ///AlreadyRequestingMembershipForClanPlatform = 631
  @JsonValue(631)
  AlreadyRequestingMembershipForClanPlatform,
  ///AlreadyClanMemberOnPlatform = 632
  @JsonValue(632)
  AlreadyClanMemberOnPlatform,
  ///GroupJoinedCannotSetClanName = 633
  @JsonValue(633)
  GroupJoinedCannotSetClanName,
  ///GroupLeftCannotClearClanName = 634
  @JsonValue(634)
  GroupLeftCannotClearClanName,
  ///GroupRelationshipRequestPending = 635
  @JsonValue(635)
  GroupRelationshipRequestPending,
  ///GroupRelationshipRequestBlocked = 636
  @JsonValue(636)
  GroupRelationshipRequestBlocked,
  ///GroupRelationshipRequestNotFound = 637
  @JsonValue(637)
  GroupRelationshipRequestNotFound,
  ///GroupRelationshipBlockNotFound = 638
  @JsonValue(638)
  GroupRelationshipBlockNotFound,
  ///GroupRelationshipNotFound = 639
  @JsonValue(639)
  GroupRelationshipNotFound,
  ///GroupAlreadyAllied = 641
  @JsonValue(641)
  GroupAlreadyAllied,
  ///GroupAlreadyMember = 642
  @JsonValue(642)
  GroupAlreadyMember,
  ///GroupRelationshipAlreadyExists = 643
  @JsonValue(643)
  GroupRelationshipAlreadyExists,
  ///InvalidGroupTypesForRelationshipRequest = 644
  @JsonValue(644)
  InvalidGroupTypesForRelationshipRequest,
  ///GroupAtMaximumAlliances = 646
  @JsonValue(646)
  GroupAtMaximumAlliances,
  ///GroupCannotSetClanOnlySettings = 647
  @JsonValue(647)
  GroupCannotSetClanOnlySettings,
  ///ClanCannotSetTwoDefaultPostTypes = 648
  @JsonValue(648)
  ClanCannotSetTwoDefaultPostTypes,
  ///GroupMemberInvalidMemberType = 649
  @JsonValue(649)
  GroupMemberInvalidMemberType,
  ///GroupInvalidPlatformType = 650
  @JsonValue(650)
  GroupInvalidPlatformType,
  ///GroupMemberInvalidSort = 651
  @JsonValue(651)
  GroupMemberInvalidSort,
  ///GroupInvalidResolveState = 652
  @JsonValue(652)
  GroupInvalidResolveState,
  ///ClanAlreadyEnabledForPlatform = 653
  @JsonValue(653)
  ClanAlreadyEnabledForPlatform,
  ///ClanNotEnabledForPlatform = 654
  @JsonValue(654)
  ClanNotEnabledForPlatform,
  ///ClanEnabledButCouldNotJoinNoAccount = 655
  @JsonValue(655)
  ClanEnabledButCouldNotJoinNoAccount,
  ///ClanEnabledButCouldNotJoinAlreadyMember = 656
  @JsonValue(656)
  ClanEnabledButCouldNotJoinAlreadyMember,
  ///ClanCannotJoinNoCredential = 657
  @JsonValue(657)
  ClanCannotJoinNoCredential,
  ///NoClanMembershipForPlatform = 658
  @JsonValue(658)
  NoClanMembershipForPlatform,
  ///GroupToGroupFollowLimitReached = 659
  @JsonValue(659)
  GroupToGroupFollowLimitReached,
  ///ChildGroupAlreadyInAlliance = 660
  @JsonValue(660)
  ChildGroupAlreadyInAlliance,
  ///OwnerGroupAlreadyInAlliance = 661
  @JsonValue(661)
  OwnerGroupAlreadyInAlliance,
  ///AllianceOwnerCannotJoinAlliance = 662
  @JsonValue(662)
  AllianceOwnerCannotJoinAlliance,
  ///GroupNotInAlliance = 663
  @JsonValue(663)
  GroupNotInAlliance,
  ///ChildGroupCannotInviteToAlliance = 664
  @JsonValue(664)
  ChildGroupCannotInviteToAlliance,
  ///GroupToGroupAlreadyFollowed = 665
  @JsonValue(665)
  GroupToGroupAlreadyFollowed,
  ///GroupToGroupNotFollowing = 666
  @JsonValue(666)
  GroupToGroupNotFollowing,
  ///ClanMaximumMembershipReached = 667
  @JsonValue(667)
  ClanMaximumMembershipReached,
  ///ClanNameNotValid = 668
  @JsonValue(668)
  ClanNameNotValid,
  ///ClanNameNotValidError = 669
  @JsonValue(669)
  ClanNameNotValidError,
  ///AllianceOwnerNotDefined = 670
  @JsonValue(670)
  AllianceOwnerNotDefined,
  ///AllianceChildNotDefined = 671
  @JsonValue(671)
  AllianceChildNotDefined,
  ///ClanCultureIllegalCharacters = 672
  @JsonValue(672)
  ClanCultureIllegalCharacters,
  ///ClanTagIllegalCharacters = 673
  @JsonValue(673)
  ClanTagIllegalCharacters,
  ///ClanRequiresInvitation = 674
  @JsonValue(674)
  ClanRequiresInvitation,
  ///ClanMembershipClosed = 675
  @JsonValue(675)
  ClanMembershipClosed,
  ///ClanInviteAlreadyMember = 676
  @JsonValue(676)
  ClanInviteAlreadyMember,
  ///GroupInviteAlreadyMember = 677
  @JsonValue(677)
  GroupInviteAlreadyMember,
  ///GroupJoinApprovalRequired = 678
  @JsonValue(678)
  GroupJoinApprovalRequired,
  ///ClanTagRequired = 679
  @JsonValue(679)
  ClanTagRequired,
  ///GroupNameCannotStartOrEndWithWhiteSpace = 680
  @JsonValue(680)
  GroupNameCannotStartOrEndWithWhiteSpace,
  ///ClanCallsignCannotStartOrEndWithWhiteSpace = 681
  @JsonValue(681)
  ClanCallsignCannotStartOrEndWithWhiteSpace,
  ///ClanMigrationFailed = 682
  @JsonValue(682)
  ClanMigrationFailed,
  ///ClanNotEnabledAlreadyMemberOfAnotherClan = 683
  @JsonValue(683)
  ClanNotEnabledAlreadyMemberOfAnotherClan,
  ///GroupModerationNotPermittedOnNonMembers = 684
  @JsonValue(684)
  GroupModerationNotPermittedOnNonMembers,
  ///ClanCreationInWorldServerFailed = 685
  @JsonValue(685)
  ClanCreationInWorldServerFailed,
  ///ClanNotFound = 686
  @JsonValue(686)
  ClanNotFound,
  ///ClanMembershipLevelDoesNotPermitThatAction = 687
  @JsonValue(687)
  ClanMembershipLevelDoesNotPermitThatAction,
  ///ClanMemberNotFound = 688
  @JsonValue(688)
  ClanMemberNotFound,
  ///ClanMissingMembershipApprovers = 689
  @JsonValue(689)
  ClanMissingMembershipApprovers,
  ///ClanInWrongStateForRequestedAction = 690
  @JsonValue(690)
  ClanInWrongStateForRequestedAction,
  ///ClanNameAlreadyUsed = 691
  @JsonValue(691)
  ClanNameAlreadyUsed,
  ///ClanTooFewMembers = 692
  @JsonValue(692)
  ClanTooFewMembers,
  ///ClanInfoCannotBeWhitespace = 693
  @JsonValue(693)
  ClanInfoCannotBeWhitespace,
  ///GroupCultureThrottle = 694
  @JsonValue(694)
  GroupCultureThrottle,
  ///ClanTargetDisallowsInvites = 695
  @JsonValue(695)
  ClanTargetDisallowsInvites,
  ///ClanInvalidOperation = 696
  @JsonValue(696)
  ClanInvalidOperation,
  ///ClanFounderCannotLeaveWithoutAbdication = 697
  @JsonValue(697)
  ClanFounderCannotLeaveWithoutAbdication,
  ///ClanNameReserved = 698
  @JsonValue(698)
  ClanNameReserved,
  ///ClanApplicantInClanSoNowInvited = 699
  @JsonValue(699)
  ClanApplicantInClanSoNowInvited,
  ///ActivitiesUnknownException = 701
  @JsonValue(701)
  ActivitiesUnknownException,
  ///ActivitiesParameterNull = 702
  @JsonValue(702)
  ActivitiesParameterNull,
  ///ActivityCountsDiabled = 703
  @JsonValue(703)
  ActivityCountsDiabled,
  ///ActivitySearchInvalidParameters = 704
  @JsonValue(704)
  ActivitySearchInvalidParameters,
  ///ActivityPermissionDenied = 705
  @JsonValue(705)
  ActivityPermissionDenied,
  ///ShareAlreadyShared = 706
  @JsonValue(706)
  ShareAlreadyShared,
  ///ActivityLoggingDisabled = 707
  @JsonValue(707)
  ActivityLoggingDisabled,
  ///ClanRequiresExistingDestinyAccount = 750
  @JsonValue(750)
  ClanRequiresExistingDestinyAccount,
  ///ClanNameRestricted = 751
  @JsonValue(751)
  ClanNameRestricted,
  ///ClanCreationBan = 752
  @JsonValue(752)
  ClanCreationBan,
  ///ClanCreationTenureRequirementsNotMet = 753
  @JsonValue(753)
  ClanCreationTenureRequirementsNotMet,
  ///ClanFieldContainsReservedTerms = 754
  @JsonValue(754)
  ClanFieldContainsReservedTerms,
  ///ClanFieldContainsInappropriateContent = 755
  @JsonValue(755)
  ClanFieldContainsInappropriateContent,
  ///ItemAlreadyFollowed = 801
  @JsonValue(801)
  ItemAlreadyFollowed,
  ///ItemNotFollowed = 802
  @JsonValue(802)
  ItemNotFollowed,
  ///CannotFollowSelf = 803
  @JsonValue(803)
  CannotFollowSelf,
  ///GroupFollowLimitExceeded = 804
  @JsonValue(804)
  GroupFollowLimitExceeded,
  ///TagFollowLimitExceeded = 805
  @JsonValue(805)
  TagFollowLimitExceeded,
  ///UserFollowLimitExceeded = 806
  @JsonValue(806)
  UserFollowLimitExceeded,
  ///FollowUnsupportedEntityType = 807
  @JsonValue(807)
  FollowUnsupportedEntityType,
  ///NoValidTagsInList = 900
  @JsonValue(900)
  NoValidTagsInList,
  ///BelowMinimumSuggestionLength = 901
  @JsonValue(901)
  BelowMinimumSuggestionLength,
  ///CannotGetSuggestionsOnMultipleTagsSimultaneously = 902
  @JsonValue(902)
  CannotGetSuggestionsOnMultipleTagsSimultaneously,
  ///NotAValidPartialTag = 903
  @JsonValue(903)
  NotAValidPartialTag,
  ///TagSuggestionsUnknownSqlResult = 904
  @JsonValue(904)
  TagSuggestionsUnknownSqlResult,
  ///TagsUnableToLoadPopularTagsFromDatabase = 905
  @JsonValue(905)
  TagsUnableToLoadPopularTagsFromDatabase,
  ///TagInvalid = 906
  @JsonValue(906)
  TagInvalid,
  ///TagNotFound = 907
  @JsonValue(907)
  TagNotFound,
  ///SingleTagExpected = 908
  @JsonValue(908)
  SingleTagExpected,
  ///TagsExceededMaximumPerItem = 909
  @JsonValue(909)
  TagsExceededMaximumPerItem,
  ///IgnoreInvalidParameters = 1000
  @JsonValue(1000)
  IgnoreInvalidParameters,
  ///IgnoreSqlException = 1001
  @JsonValue(1001)
  IgnoreSqlException,
  ///IgnoreErrorRetrievingGroupPermissions = 1002
  @JsonValue(1002)
  IgnoreErrorRetrievingGroupPermissions,
  ///IgnoreErrorInsufficientPermission = 1003
  @JsonValue(1003)
  IgnoreErrorInsufficientPermission,
  ///IgnoreErrorRetrievingItem = 1004
  @JsonValue(1004)
  IgnoreErrorRetrievingItem,
  ///IgnoreCannotIgnoreSelf = 1005
  @JsonValue(1005)
  IgnoreCannotIgnoreSelf,
  ///IgnoreIllegalType = 1006
  @JsonValue(1006)
  IgnoreIllegalType,
  ///IgnoreNotFound = 1007
  @JsonValue(1007)
  IgnoreNotFound,
  ///IgnoreUserGloballyIgnored = 1008
  @JsonValue(1008)
  IgnoreUserGloballyIgnored,
  ///IgnoreUserIgnored = 1009
  @JsonValue(1009)
  IgnoreUserIgnored,
  ///TargetUserIgnored = 1010
  @JsonValue(1010)
  TargetUserIgnored,
  ///NotificationSettingInvalid = 1100
  @JsonValue(1100)
  NotificationSettingInvalid,
  ///PsnApiExpiredAccessToken = 1204
  @JsonValue(1204)
  PsnApiExpiredAccessToken,
  ///PSNExForbidden = 1205
  @JsonValue(1205)
  PSNExForbidden,
  ///PSNExSystemDisabled = 1218
  @JsonValue(1218)
  PSNExSystemDisabled,
  ///PsnApiErrorCodeUnknown = 1223
  @JsonValue(1223)
  PsnApiErrorCodeUnknown,
  ///PsnApiErrorWebException = 1224
  @JsonValue(1224)
  PsnApiErrorWebException,
  ///PsnApiBadRequest = 1225
  @JsonValue(1225)
  PsnApiBadRequest,
  ///PsnApiAccessTokenRequired = 1226
  @JsonValue(1226)
  PsnApiAccessTokenRequired,
  ///PsnApiInvalidAccessToken = 1227
  @JsonValue(1227)
  PsnApiInvalidAccessToken,
  ///PsnApiBannedUser = 1229
  @JsonValue(1229)
  PsnApiBannedUser,
  ///PsnApiAccountUpgradeRequired = 1230
  @JsonValue(1230)
  PsnApiAccountUpgradeRequired,
  ///PsnApiServiceTemporarilyUnavailable = 1231
  @JsonValue(1231)
  PsnApiServiceTemporarilyUnavailable,
  ///PsnApiServerBusy = 1232
  @JsonValue(1232)
  PsnApiServerBusy,
  ///PsnApiUnderMaintenance = 1233
  @JsonValue(1233)
  PsnApiUnderMaintenance,
  ///PsnApiProfileUserNotFound = 1234
  @JsonValue(1234)
  PsnApiProfileUserNotFound,
  ///PsnApiProfilePrivacyRestriction = 1235
  @JsonValue(1235)
  PsnApiProfilePrivacyRestriction,
  ///PsnApiProfileUnderMaintenance = 1236
  @JsonValue(1236)
  PsnApiProfileUnderMaintenance,
  ///PsnApiAccountAttributeMissing = 1237
  @JsonValue(1237)
  PsnApiAccountAttributeMissing,
  ///PsnApiNoPermission = 1238
  @JsonValue(1238)
  PsnApiNoPermission,
  ///PsnApiTargetUserBlocked = 1239
  @JsonValue(1239)
  PsnApiTargetUserBlocked,
  ///PsnApiJwksMissing = 1240
  @JsonValue(1240)
  PsnApiJwksMissing,
  ///PsnApiJwtMalformedHeader = 1241
  @JsonValue(1241)
  PsnApiJwtMalformedHeader,
  ///PsnApiJwtMalformedPayload = 1242
  @JsonValue(1242)
  PsnApiJwtMalformedPayload,
  ///XblExSystemDisabled = 1300
  @JsonValue(1300)
  XblExSystemDisabled,
  ///XblExUnknownError = 1301
  @JsonValue(1301)
  XblExUnknownError,
  ///XblApiErrorWebException = 1302
  @JsonValue(1302)
  XblApiErrorWebException,
  ///XblStsTokenInvalid = 1303
  @JsonValue(1303)
  XblStsTokenInvalid,
  ///XblStsMissingToken = 1304
  @JsonValue(1304)
  XblStsMissingToken,
  ///XblStsExpiredToken = 1305
  @JsonValue(1305)
  XblStsExpiredToken,
  ///XblAccessToTheSandboxDenied = 1306
  @JsonValue(1306)
  XblAccessToTheSandboxDenied,
  ///XblMsaResponseMissing = 1307
  @JsonValue(1307)
  XblMsaResponseMissing,
  ///XblMsaAccessTokenExpired = 1308
  @JsonValue(1308)
  XblMsaAccessTokenExpired,
  ///XblMsaInvalidRequest = 1309
  @JsonValue(1309)
  XblMsaInvalidRequest,
  ///XblMsaFriendsRequireSignIn = 1310
  @JsonValue(1310)
  XblMsaFriendsRequireSignIn,
  ///XblUserActionRequired = 1311
  @JsonValue(1311)
  XblUserActionRequired,
  ///XblParentalControls = 1312
  @JsonValue(1312)
  XblParentalControls,
  ///XblDeveloperAccount = 1313
  @JsonValue(1313)
  XblDeveloperAccount,
  ///XblUserTokenExpired = 1314
  @JsonValue(1314)
  XblUserTokenExpired,
  ///XblUserTokenInvalid = 1315
  @JsonValue(1315)
  XblUserTokenInvalid,
  ///XblOffline = 1316
  @JsonValue(1316)
  XblOffline,
  ///XblUnknownErrorCode = 1317
  @JsonValue(1317)
  XblUnknownErrorCode,
  ///XblMsaInvalidGrant = 1318
  @JsonValue(1318)
  XblMsaInvalidGrant,
  ///ReportNotYetResolved = 1400
  @JsonValue(1400)
  ReportNotYetResolved,
  ///ReportOverturnDoesNotChangeDecision = 1401
  @JsonValue(1401)
  ReportOverturnDoesNotChangeDecision,
  ///ReportNotFound = 1402
  @JsonValue(1402)
  ReportNotFound,
  ///ReportAlreadyReported = 1403
  @JsonValue(1403)
  ReportAlreadyReported,
  ///ReportInvalidResolution = 1404
  @JsonValue(1404)
  ReportInvalidResolution,
  ///ReportNotAssignedToYou = 1405
  @JsonValue(1405)
  ReportNotAssignedToYou,
  ///LegacyGameStatsSystemDisabled = 1500
  @JsonValue(1500)
  LegacyGameStatsSystemDisabled,
  ///LegacyGameStatsUnknownError = 1501
  @JsonValue(1501)
  LegacyGameStatsUnknownError,
  ///LegacyGameStatsMalformedSneakerNetCode = 1502
  @JsonValue(1502)
  LegacyGameStatsMalformedSneakerNetCode,
  ///DestinyAccountAcquisitionFailure = 1600
  @JsonValue(1600)
  DestinyAccountAcquisitionFailure,
  ///DestinyAccountNotFound = 1601
  @JsonValue(1601)
  DestinyAccountNotFound,
  ///DestinyBuildStatsDatabaseError = 1602
  @JsonValue(1602)
  DestinyBuildStatsDatabaseError,
  ///DestinyCharacterStatsDatabaseError = 1603
  @JsonValue(1603)
  DestinyCharacterStatsDatabaseError,
  ///DestinyPvPStatsDatabaseError = 1604
  @JsonValue(1604)
  DestinyPvPStatsDatabaseError,
  ///DestinyPvEStatsDatabaseError = 1605
  @JsonValue(1605)
  DestinyPvEStatsDatabaseError,
  ///DestinyGrimoireStatsDatabaseError = 1606
  @JsonValue(1606)
  DestinyGrimoireStatsDatabaseError,
  ///DestinyStatsParameterMembershipTypeParseError = 1607
  @JsonValue(1607)
  DestinyStatsParameterMembershipTypeParseError,
  ///DestinyStatsParameterMembershipIdParseError = 1608
  @JsonValue(1608)
  DestinyStatsParameterMembershipIdParseError,
  ///DestinyStatsParameterRangeParseError = 1609
  @JsonValue(1609)
  DestinyStatsParameterRangeParseError,
  ///DestinyStringItemHashNotFound = 1610
  @JsonValue(1610)
  DestinyStringItemHashNotFound,
  ///DestinyStringSetNotFound = 1611
  @JsonValue(1611)
  DestinyStringSetNotFound,
  ///DestinyContentLookupNotFoundForKey = 1612
  @JsonValue(1612)
  DestinyContentLookupNotFoundForKey,
  ///DestinyContentItemNotFound = 1613
  @JsonValue(1613)
  DestinyContentItemNotFound,
  ///DestinyContentSectionNotFound = 1614
  @JsonValue(1614)
  DestinyContentSectionNotFound,
  ///DestinyContentPropertyNotFound = 1615
  @JsonValue(1615)
  DestinyContentPropertyNotFound,
  ///DestinyContentConfigNotFound = 1616
  @JsonValue(1616)
  DestinyContentConfigNotFound,
  ///DestinyContentPropertyBucketValueNotFound = 1617
  @JsonValue(1617)
  DestinyContentPropertyBucketValueNotFound,
  ///DestinyUnexpectedError = 1618
  @JsonValue(1618)
  DestinyUnexpectedError,
  ///DestinyInvalidAction = 1619
  @JsonValue(1619)
  DestinyInvalidAction,
  ///DestinyCharacterNotFound = 1620
  @JsonValue(1620)
  DestinyCharacterNotFound,
  ///DestinyInvalidFlag = 1621
  @JsonValue(1621)
  DestinyInvalidFlag,
  ///DestinyInvalidRequest = 1622
  @JsonValue(1622)
  DestinyInvalidRequest,
  ///DestinyItemNotFound = 1623
  @JsonValue(1623)
  DestinyItemNotFound,
  ///DestinyInvalidCustomizationChoices = 1624
  @JsonValue(1624)
  DestinyInvalidCustomizationChoices,
  ///DestinyVendorItemNotFound = 1625
  @JsonValue(1625)
  DestinyVendorItemNotFound,
  ///DestinyInternalError = 1626
  @JsonValue(1626)
  DestinyInternalError,
  ///DestinyVendorNotFound = 1627
  @JsonValue(1627)
  DestinyVendorNotFound,
  ///DestinyRecentActivitiesDatabaseError = 1628
  @JsonValue(1628)
  DestinyRecentActivitiesDatabaseError,
  ///DestinyItemBucketNotFound = 1629
  @JsonValue(1629)
  DestinyItemBucketNotFound,
  ///DestinyInvalidMembershipType = 1630
  @JsonValue(1630)
  DestinyInvalidMembershipType,
  ///DestinyVersionIncompatibility = 1631
  @JsonValue(1631)
  DestinyVersionIncompatibility,
  ///DestinyItemAlreadyInInventory = 1632
  @JsonValue(1632)
  DestinyItemAlreadyInInventory,
  ///DestinyBucketNotFound = 1633
  @JsonValue(1633)
  DestinyBucketNotFound,
  ///DestinyCharacterNotInTower = 1634
  /// Note: This is one of those holdovers from Destiny 1. We didn&#39;t change the enum because I am lazy, but in Destiny 2 this would read &quot;DestinyCharacterNotInSocialSpace&quot;
  @JsonValue(1634)
  DestinyCharacterNotInTower,
  ///DestinyCharacterNotLoggedIn = 1635
  @JsonValue(1635)
  DestinyCharacterNotLoggedIn,
  ///DestinyDefinitionsNotLoaded = 1636
  @JsonValue(1636)
  DestinyDefinitionsNotLoaded,
  ///DestinyInventoryFull = 1637
  @JsonValue(1637)
  DestinyInventoryFull,
  ///DestinyItemFailedLevelCheck = 1638
  @JsonValue(1638)
  DestinyItemFailedLevelCheck,
  ///DestinyItemFailedUnlockCheck = 1639
  @JsonValue(1639)
  DestinyItemFailedUnlockCheck,
  ///DestinyItemUnequippable = 1640
  @JsonValue(1640)
  DestinyItemUnequippable,
  ///DestinyItemUniqueEquipRestricted = 1641
  @JsonValue(1641)
  DestinyItemUniqueEquipRestricted,
  ///DestinyNoRoomInDestination = 1642
  @JsonValue(1642)
  DestinyNoRoomInDestination,
  ///DestinyServiceFailure = 1643
  @JsonValue(1643)
  DestinyServiceFailure,
  ///DestinyServiceRetired = 1644
  @JsonValue(1644)
  DestinyServiceRetired,
  ///DestinyTransferFailed = 1645
  @JsonValue(1645)
  DestinyTransferFailed,
  ///DestinyTransferNotFoundForSourceBucket = 1646
  @JsonValue(1646)
  DestinyTransferNotFoundForSourceBucket,
  ///DestinyUnexpectedResultInVendorTransferCheck = 1647
  @JsonValue(1647)
  DestinyUnexpectedResultInVendorTransferCheck,
  ///DestinyUniquenessViolation = 1648
  @JsonValue(1648)
  DestinyUniquenessViolation,
  ///DestinyErrorDeserializationFailure = 1649
  @JsonValue(1649)
  DestinyErrorDeserializationFailure,
  ///DestinyValidAccountTicketRequired = 1650
  @JsonValue(1650)
  DestinyValidAccountTicketRequired,
  ///DestinyShardRelayClientTimeout = 1651
  @JsonValue(1651)
  DestinyShardRelayClientTimeout,
  ///DestinyShardRelayProxyTimeout = 1652
  @JsonValue(1652)
  DestinyShardRelayProxyTimeout,
  ///DestinyPGCRNotFound = 1653
  @JsonValue(1653)
  DestinyPGCRNotFound,
  ///DestinyAccountMustBeOffline = 1654
  @JsonValue(1654)
  DestinyAccountMustBeOffline,
  ///DestinyCanOnlyEquipInGame = 1655
  @JsonValue(1655)
  DestinyCanOnlyEquipInGame,
  ///DestinyCannotPerformActionOnEquippedItem = 1656
  @JsonValue(1656)
  DestinyCannotPerformActionOnEquippedItem,
  ///DestinyQuestAlreadyCompleted = 1657
  @JsonValue(1657)
  DestinyQuestAlreadyCompleted,
  ///DestinyQuestAlreadyTracked = 1658
  @JsonValue(1658)
  DestinyQuestAlreadyTracked,
  ///DestinyTrackableQuestsFull = 1659
  @JsonValue(1659)
  DestinyTrackableQuestsFull,
  ///DestinyItemNotTransferrable = 1660
  @JsonValue(1660)
  DestinyItemNotTransferrable,
  ///DestinyVendorPurchaseNotAllowed = 1661
  @JsonValue(1661)
  DestinyVendorPurchaseNotAllowed,
  ///DestinyContentVersionMismatch = 1662
  @JsonValue(1662)
  DestinyContentVersionMismatch,
  ///DestinyItemActionForbidden = 1663
  @JsonValue(1663)
  DestinyItemActionForbidden,
  ///DestinyRefundInvalid = 1664
  @JsonValue(1664)
  DestinyRefundInvalid,
  ///DestinyPrivacyRestriction = 1665
  @JsonValue(1665)
  DestinyPrivacyRestriction,
  ///DestinyActionInsufficientPrivileges = 1666
  @JsonValue(1666)
  DestinyActionInsufficientPrivileges,
  ///DestinyInvalidClaimException = 1667
  @JsonValue(1667)
  DestinyInvalidClaimException,
  ///DestinyLegacyPlatformRestricted = 1668
  @JsonValue(1668)
  DestinyLegacyPlatformRestricted,
  ///DestinyLegacyPlatformInUse = 1669
  @JsonValue(1669)
  DestinyLegacyPlatformInUse,
  ///DestinyLegacyPlatformInaccessible = 1670
  @JsonValue(1670)
  DestinyLegacyPlatformInaccessible,
  ///DestinyCannotPerformActionAtThisLocation = 1671
  @JsonValue(1671)
  DestinyCannotPerformActionAtThisLocation,
  ///DestinyThrottledByGameServer = 1672
  @JsonValue(1672)
  DestinyThrottledByGameServer,
  ///DestinyItemNotTransferrableHasSideEffects = 1673
  @JsonValue(1673)
  DestinyItemNotTransferrableHasSideEffects,
  ///DestinyItemLocked = 1674
  @JsonValue(1674)
  DestinyItemLocked,
  ///DestinyCannotAffordMaterialRequirements = 1675
  @JsonValue(1675)
  DestinyCannotAffordMaterialRequirements,
  ///DestinyFailedPlugInsertionRules = 1676
  @JsonValue(1676)
  DestinyFailedPlugInsertionRules,
  ///DestinySocketNotFound = 1677
  @JsonValue(1677)
  DestinySocketNotFound,
  ///DestinySocketActionNotAllowed = 1678
  @JsonValue(1678)
  DestinySocketActionNotAllowed,
  ///DestinySocketAlreadyHasPlug = 1679
  @JsonValue(1679)
  DestinySocketAlreadyHasPlug,
  ///DestinyPlugItemNotAvailable = 1680
  @JsonValue(1680)
  DestinyPlugItemNotAvailable,
  ///DestinyCharacterLoggedInNotAllowed = 1681
  @JsonValue(1681)
  DestinyCharacterLoggedInNotAllowed,
  ///DestinyPublicAccountNotAccessible = 1682
  @JsonValue(1682)
  DestinyPublicAccountNotAccessible,
  ///DestinyClaimsItemAlreadyClaimed = 1683
  @JsonValue(1683)
  DestinyClaimsItemAlreadyClaimed,
  ///DestinyClaimsNoInventorySpace = 1684
  @JsonValue(1684)
  DestinyClaimsNoInventorySpace,
  ///DestinyClaimsRequiredLevelNotMet = 1685
  @JsonValue(1685)
  DestinyClaimsRequiredLevelNotMet,
  ///DestinyClaimsInvalidState = 1686
  @JsonValue(1686)
  DestinyClaimsInvalidState,
  ///DestinyNotEnoughRoomForMultipleRewards = 1687
  @JsonValue(1687)
  DestinyNotEnoughRoomForMultipleRewards,
  ///DestinyDirectBabelClientTimeout = 1688
  @JsonValue(1688)
  DestinyDirectBabelClientTimeout,
  ///FbInvalidRequest = 1800
  @JsonValue(1800)
  FbInvalidRequest,
  ///FbRedirectMismatch = 1801
  @JsonValue(1801)
  FbRedirectMismatch,
  ///FbAccessDenied = 1802
  @JsonValue(1802)
  FbAccessDenied,
  ///FbUnsupportedResponseType = 1803
  @JsonValue(1803)
  FbUnsupportedResponseType,
  ///FbInvalidScope = 1804
  @JsonValue(1804)
  FbInvalidScope,
  ///FbUnsupportedGrantType = 1805
  @JsonValue(1805)
  FbUnsupportedGrantType,
  ///FbInvalidGrant = 1806
  @JsonValue(1806)
  FbInvalidGrant,
  ///InvitationExpired = 1900
  @JsonValue(1900)
  InvitationExpired,
  ///InvitationUnknownType = 1901
  @JsonValue(1901)
  InvitationUnknownType,
  ///InvitationInvalidResponseStatus = 1902
  @JsonValue(1902)
  InvitationInvalidResponseStatus,
  ///InvitationInvalidType = 1903
  @JsonValue(1903)
  InvitationInvalidType,
  ///InvitationAlreadyPending = 1904
  @JsonValue(1904)
  InvitationAlreadyPending,
  ///InvitationInsufficientPermission = 1905
  @JsonValue(1905)
  InvitationInsufficientPermission,
  ///InvitationInvalidCode = 1906
  @JsonValue(1906)
  InvitationInvalidCode,
  ///InvitationInvalidTargetState = 1907
  @JsonValue(1907)
  InvitationInvalidTargetState,
  ///InvitationCannotBeReactivated = 1908
  @JsonValue(1908)
  InvitationCannotBeReactivated,
  ///InvitationNoRecipients = 1910
  @JsonValue(1910)
  InvitationNoRecipients,
  ///InvitationGroupCannotSendToSelf = 1911
  @JsonValue(1911)
  InvitationGroupCannotSendToSelf,
  ///InvitationTooManyRecipients = 1912
  @JsonValue(1912)
  InvitationTooManyRecipients,
  ///InvitationInvalid = 1913
  @JsonValue(1913)
  InvitationInvalid,
  ///InvitationNotFound = 1914
  @JsonValue(1914)
  InvitationNotFound,
  ///TokenInvalid = 2000
  @JsonValue(2000)
  TokenInvalid,
  ///TokenBadFormat = 2001
  @JsonValue(2001)
  TokenBadFormat,
  ///TokenAlreadyClaimed = 2002
  @JsonValue(2002)
  TokenAlreadyClaimed,
  ///TokenAlreadyClaimedSelf = 2003
  @JsonValue(2003)
  TokenAlreadyClaimedSelf,
  ///TokenThrottling = 2004
  @JsonValue(2004)
  TokenThrottling,
  ///TokenUnknownRedemptionFailure = 2005
  @JsonValue(2005)
  TokenUnknownRedemptionFailure,
  ///TokenPurchaseClaimFailedAfterTokenClaimed = 2006
  @JsonValue(2006)
  TokenPurchaseClaimFailedAfterTokenClaimed,
  ///TokenUserAlreadyOwnsOffer = 2007
  @JsonValue(2007)
  TokenUserAlreadyOwnsOffer,
  ///TokenInvalidOfferKey = 2008
  @JsonValue(2008)
  TokenInvalidOfferKey,
  ///TokenEmailNotValidated = 2009
  @JsonValue(2009)
  TokenEmailNotValidated,
  ///TokenProvisioningBadVendorOrOffer = 2010
  @JsonValue(2010)
  TokenProvisioningBadVendorOrOffer,
  ///TokenPurchaseHistoryUnknownError = 2011
  @JsonValue(2011)
  TokenPurchaseHistoryUnknownError,
  ///TokenThrottleStateUnknownError = 2012
  @JsonValue(2012)
  TokenThrottleStateUnknownError,
  ///TokenUserAgeNotVerified = 2013
  @JsonValue(2013)
  TokenUserAgeNotVerified,
  ///TokenExceededOfferMaximum = 2014
  @JsonValue(2014)
  TokenExceededOfferMaximum,
  ///TokenNoAvailableUnlocks = 2015
  @JsonValue(2015)
  TokenNoAvailableUnlocks,
  ///TokenMarketplaceInvalidPlatform = 2016
  @JsonValue(2016)
  TokenMarketplaceInvalidPlatform,
  ///TokenNoMarketplaceCodesFound = 2017
  @JsonValue(2017)
  TokenNoMarketplaceCodesFound,
  ///TokenOfferNotAvailableForRedemption = 2018
  @JsonValue(2018)
  TokenOfferNotAvailableForRedemption,
  ///TokenUnlockPartialFailure = 2019
  @JsonValue(2019)
  TokenUnlockPartialFailure,
  ///TokenMarketplaceInvalidRegion = 2020
  @JsonValue(2020)
  TokenMarketplaceInvalidRegion,
  ///TokenOfferExpired = 2021
  @JsonValue(2021)
  TokenOfferExpired,
  ///RAFExceededMaximumReferrals = 2022
  @JsonValue(2022)
  RAFExceededMaximumReferrals,
  ///RAFDuplicateBond = 2023
  @JsonValue(2023)
  RAFDuplicateBond,
  ///RAFNoValidVeteranDestinyMembershipsFound = 2024
  @JsonValue(2024)
  RAFNoValidVeteranDestinyMembershipsFound,
  ///RAFNotAValidVeteranUser = 2025
  @JsonValue(2025)
  RAFNotAValidVeteranUser,
  ///RAFCodeAlreadyClaimedOrNotFound = 2026
  @JsonValue(2026)
  RAFCodeAlreadyClaimedOrNotFound,
  ///RAFMismatchedDestinyMembershipType = 2027
  @JsonValue(2027)
  RAFMismatchedDestinyMembershipType,
  ///RAFUnableToAccessPurchaseHistory = 2028
  @JsonValue(2028)
  RAFUnableToAccessPurchaseHistory,
  ///RAFUnableToCreateBond = 2029
  @JsonValue(2029)
  RAFUnableToCreateBond,
  ///RAFUnableToFindBond = 2030
  @JsonValue(2030)
  RAFUnableToFindBond,
  ///RAFUnableToRemoveBond = 2031
  @JsonValue(2031)
  RAFUnableToRemoveBond,
  ///RAFCannotBondToSelf = 2032
  @JsonValue(2032)
  RAFCannotBondToSelf,
  ///RAFInvalidPlatform = 2033
  @JsonValue(2033)
  RAFInvalidPlatform,
  ///RAFGenerateThrottled = 2034
  @JsonValue(2034)
  RAFGenerateThrottled,
  ///RAFUnableToCreateBondVersionMismatch = 2035
  @JsonValue(2035)
  RAFUnableToCreateBondVersionMismatch,
  ///RAFUnableToRemoveBondVersionMismatch = 2036
  @JsonValue(2036)
  RAFUnableToRemoveBondVersionMismatch,
  ///RAFRedeemThrottled = 2037
  @JsonValue(2037)
  RAFRedeemThrottled,
  ///NoAvailableDiscountCode = 2038
  @JsonValue(2038)
  NoAvailableDiscountCode,
  ///DiscountAlreadyClaimed = 2039
  @JsonValue(2039)
  DiscountAlreadyClaimed,
  ///DiscountClaimFailure = 2040
  @JsonValue(2040)
  DiscountClaimFailure,
  ///DiscountConfigurationFailure = 2041
  @JsonValue(2041)
  DiscountConfigurationFailure,
  ///DiscountGenerationFailure = 2042
  @JsonValue(2042)
  DiscountGenerationFailure,
  ///DiscountAlreadyExists = 2043
  @JsonValue(2043)
  DiscountAlreadyExists,
  ///TokenRequiresCredentialXuid = 2044
  @JsonValue(2044)
  TokenRequiresCredentialXuid,
  ///TokenRequiresCredentialPsnid = 2045
  @JsonValue(2045)
  TokenRequiresCredentialPsnid,
  ///OfferRequired = 2046
  @JsonValue(2046)
  OfferRequired,
  ///UnknownEververseHistoryError = 2047
  @JsonValue(2047)
  UnknownEververseHistoryError,
  ///MissingEververseHistoryError = 2048
  @JsonValue(2048)
  MissingEververseHistoryError,
  ///BungieRewardEmailStateInvalid = 2049
  @JsonValue(2049)
  BungieRewardEmailStateInvalid,
  ///BungieRewardNotYetClaimable = 2050
  @JsonValue(2050)
  BungieRewardNotYetClaimable,
  ///MissingOfferConfig = 2051
  @JsonValue(2051)
  MissingOfferConfig,
  ///RAFQuestEntitlementRequiresBnet = 2052
  @JsonValue(2052)
  RAFQuestEntitlementRequiresBnet,
  ///RAFQuestEntitlementTransportFailure = 2053
  @JsonValue(2053)
  RAFQuestEntitlementTransportFailure,
  ///RAFQuestEntitlementUnknownFailure = 2054
  @JsonValue(2054)
  RAFQuestEntitlementUnknownFailure,
  ///RAFVeteranRewardUnknownFailure = 2055
  @JsonValue(2055)
  RAFVeteranRewardUnknownFailure,
  ///RAFTooEarlyToCancelBond = 2056
  @JsonValue(2056)
  RAFTooEarlyToCancelBond,
  ///LoyaltyRewardAlreadyRedeemed = 2057
  @JsonValue(2057)
  LoyaltyRewardAlreadyRedeemed,
  ///UnclaimedLoyaltyRewardEntryNotFound = 2058
  @JsonValue(2058)
  UnclaimedLoyaltyRewardEntryNotFound,
  ///PartnerOfferPartialFailure = 2059
  @JsonValue(2059)
  PartnerOfferPartialFailure,
  ///PartnerOfferAlreadyClaimed = 2060
  @JsonValue(2060)
  PartnerOfferAlreadyClaimed,
  ///PartnerOfferSkuNotFound = 2061
  @JsonValue(2061)
  PartnerOfferSkuNotFound,
  ///PartnerOfferSkuExpired = 2062
  @JsonValue(2062)
  PartnerOfferSkuExpired,
  ///PartnerOfferPermissionFailure = 2063
  @JsonValue(2063)
  PartnerOfferPermissionFailure,
  ///PartnerOfferNoDestinyAccount = 2064
  @JsonValue(2064)
  PartnerOfferNoDestinyAccount,
  ///PartnerOfferApplyDataNotFound = 2065
  @JsonValue(2065)
  PartnerOfferApplyDataNotFound,
  ///ApiExceededMaxKeys = 2100
  @JsonValue(2100)
  ApiExceededMaxKeys,
  ///ApiInvalidOrExpiredKey = 2101
  @JsonValue(2101)
  ApiInvalidOrExpiredKey,
  ///ApiKeyMissingFromRequest = 2102
  @JsonValue(2102)
  ApiKeyMissingFromRequest,
  ///ApplicationDisabled = 2103
  @JsonValue(2103)
  ApplicationDisabled,
  ///ApplicationExceededMax = 2104
  @JsonValue(2104)
  ApplicationExceededMax,
  ///ApplicationDisallowedByScope = 2105
  @JsonValue(2105)
  ApplicationDisallowedByScope,
  ///AuthorizationCodeInvalid = 2106
  @JsonValue(2106)
  AuthorizationCodeInvalid,
  ///OriginHeaderDoesNotMatchKey = 2107
  @JsonValue(2107)
  OriginHeaderDoesNotMatchKey,
  ///AccessNotPermittedByApplicationScope = 2108
  @JsonValue(2108)
  AccessNotPermittedByApplicationScope,
  ///ApplicationNameIsTaken = 2109
  @JsonValue(2109)
  ApplicationNameIsTaken,
  ///RefreshTokenNotYetValid = 2110
  @JsonValue(2110)
  RefreshTokenNotYetValid,
  ///AccessTokenHasExpired = 2111
  @JsonValue(2111)
  AccessTokenHasExpired,
  ///ApplicationTokenFormatNotValid = 2112
  @JsonValue(2112)
  ApplicationTokenFormatNotValid,
  ///ApplicationNotConfiguredForBungieAuth = 2113
  @JsonValue(2113)
  ApplicationNotConfiguredForBungieAuth,
  ///ApplicationNotConfiguredForOAuth = 2114
  @JsonValue(2114)
  ApplicationNotConfiguredForOAuth,
  ///OAuthAccessTokenExpired = 2115
  @JsonValue(2115)
  OAuthAccessTokenExpired,
  ///ApplicationTokenKeyIdDoesNotExist = 2116
  @JsonValue(2116)
  ApplicationTokenKeyIdDoesNotExist,
  ///ProvidedTokenNotValidRefreshToken = 2117
  @JsonValue(2117)
  ProvidedTokenNotValidRefreshToken,
  ///RefreshTokenExpired = 2118
  @JsonValue(2118)
  RefreshTokenExpired,
  ///AuthorizationRecordInvalid = 2119
  @JsonValue(2119)
  AuthorizationRecordInvalid,
  ///TokenPreviouslyRevoked = 2120
  @JsonValue(2120)
  TokenPreviouslyRevoked,
  ///TokenInvalidMembership = 2121
  @JsonValue(2121)
  TokenInvalidMembership,
  ///AuthorizationCodeStale = 2122
  @JsonValue(2122)
  AuthorizationCodeStale,
  ///AuthorizationRecordExpired = 2123
  @JsonValue(2123)
  AuthorizationRecordExpired,
  ///AuthorizationRecordRevoked = 2124
  @JsonValue(2124)
  AuthorizationRecordRevoked,
  ///AuthorizationRecordInactiveApiKey = 2125
  @JsonValue(2125)
  AuthorizationRecordInactiveApiKey,
  ///AuthorizationRecordApiKeyMatching = 2126
  @JsonValue(2126)
  AuthorizationRecordApiKeyMatching,
  ///PartnershipInvalidType = 2200
  @JsonValue(2200)
  PartnershipInvalidType,
  ///PartnershipValidationError = 2201
  @JsonValue(2201)
  PartnershipValidationError,
  ///PartnershipValidationTimeout = 2202
  @JsonValue(2202)
  PartnershipValidationTimeout,
  ///PartnershipAccessFailure = 2203
  @JsonValue(2203)
  PartnershipAccessFailure,
  ///PartnershipAccountInvalid = 2204
  @JsonValue(2204)
  PartnershipAccountInvalid,
  ///PartnershipGetAccountInfoFailure = 2205
  @JsonValue(2205)
  PartnershipGetAccountInfoFailure,
  ///PartnershipDisabled = 2206
  @JsonValue(2206)
  PartnershipDisabled,
  ///PartnershipAlreadyExists = 2207
  @JsonValue(2207)
  PartnershipAlreadyExists,
  ///CommunityStreamingUnavailable = 2300
  @JsonValue(2300)
  CommunityStreamingUnavailable,
  ///TwitchNotLinked = 2500
  @JsonValue(2500)
  TwitchNotLinked,
  ///TwitchAccountNotFound = 2501
  @JsonValue(2501)
  TwitchAccountNotFound,
  ///TwitchCouldNotLoadDestinyInfo = 2502
  @JsonValue(2502)
  TwitchCouldNotLoadDestinyInfo,
  ///TwitchCouldNotRegisterUser = 2503
  @JsonValue(2503)
  TwitchCouldNotRegisterUser,
  ///TwitchCouldNotUnregisterUser = 2504
  @JsonValue(2504)
  TwitchCouldNotUnregisterUser,
  ///TwitchRequiresRelinking = 2505
  @JsonValue(2505)
  TwitchRequiresRelinking,
  ///TwitchNoPlatformChosen = 2506
  @JsonValue(2506)
  TwitchNoPlatformChosen,
  ///TwitchDropHistoryPermissionFailure = 2507
  @JsonValue(2507)
  TwitchDropHistoryPermissionFailure,
  ///TwitchDropsRepairPartialFailure = 2508
  @JsonValue(2508)
  TwitchDropsRepairPartialFailure,
  ///TwitchNotAuthorized = 2509
  @JsonValue(2509)
  TwitchNotAuthorized,
  ///TwitchUnknownAuthorizationFailure = 2510
  @JsonValue(2510)
  TwitchUnknownAuthorizationFailure,
  ///TrendingCategoryNotFound = 2600
  @JsonValue(2600)
  TrendingCategoryNotFound,
  ///TrendingEntryTypeNotSupported = 2601
  @JsonValue(2601)
  TrendingEntryTypeNotSupported,
  ///ReportOffenderNotInPgcr = 2700
  @JsonValue(2700)
  ReportOffenderNotInPgcr,
  ///ReportRequestorNotInPgcr = 2701
  @JsonValue(2701)
  ReportRequestorNotInPgcr,
  ///ReportSubmissionFailed = 2702
  @JsonValue(2702)
  ReportSubmissionFailed,
  ///ReportCannotReportSelf = 2703
  @JsonValue(2703)
  ReportCannotReportSelf,
  ///AwaTypeDisabled = 2800
  @JsonValue(2800)
  AwaTypeDisabled,
  ///AwaTooManyPendingRequests = 2801
  @JsonValue(2801)
  AwaTooManyPendingRequests,
  ///AwaTheFeatureRequiresARegisteredDevice = 2802
  @JsonValue(2802)
  AwaTheFeatureRequiresARegisteredDevice,
  ///AwaRequestWasUnansweredForTooLong = 2803
  @JsonValue(2803)
  AwaRequestWasUnansweredForTooLong,
  ///AwaWriteRequestMissingOrInvalidToken = 2804
  @JsonValue(2804)
  AwaWriteRequestMissingOrInvalidToken,
  ///AwaWriteRequestTokenExpired = 2805
  @JsonValue(2805)
  AwaWriteRequestTokenExpired,
  ///AwaWriteRequestTokenUsageLimitReached = 2806
  @JsonValue(2806)
  AwaWriteRequestTokenUsageLimitReached,
  ///SteamWebApiError = 2900
  @JsonValue(2900)
  SteamWebApiError,
  ///SteamWebNullResponseError = 2901
  @JsonValue(2901)
  SteamWebNullResponseError,
  ///SteamAccountRequired = 2902
  @JsonValue(2902)
  SteamAccountRequired,
  ///SteamNotAuthorized = 2903
  @JsonValue(2903)
  SteamNotAuthorized,
  ///ClanFireteamNotFound = 3000
  @JsonValue(3000)
  ClanFireteamNotFound,
  ///ClanFireteamAddNoAlternatesForImmediate = 3001
  @JsonValue(3001)
  ClanFireteamAddNoAlternatesForImmediate,
  ///ClanFireteamFull = 3002
  @JsonValue(3002)
  ClanFireteamFull,
  ///ClanFireteamAltFull = 3003
  @JsonValue(3003)
  ClanFireteamAltFull,
  ///ClanFireteamBlocked = 3004
  @JsonValue(3004)
  ClanFireteamBlocked,
  ///ClanFireteamPlayerEntryNotFound = 3005
  @JsonValue(3005)
  ClanFireteamPlayerEntryNotFound,
  ///ClanFireteamPermissions = 3006
  @JsonValue(3006)
  ClanFireteamPermissions,
  ///ClanFireteamInvalidPlatform = 3007
  @JsonValue(3007)
  ClanFireteamInvalidPlatform,
  ///ClanFireteamCannotAdjustSlotCount = 3008
  @JsonValue(3008)
  ClanFireteamCannotAdjustSlotCount,
  ///ClanFireteamInvalidPlayerPlatform = 3009
  @JsonValue(3009)
  ClanFireteamInvalidPlayerPlatform,
  ///ClanFireteamNotReadyForInvitesNotEnoughPlayers = 3010
  @JsonValue(3010)
  ClanFireteamNotReadyForInvitesNotEnoughPlayers,
  ///ClanFireteamGameInvitesNotSupportForPlatform = 3011
  @JsonValue(3011)
  ClanFireteamGameInvitesNotSupportForPlatform,
  ///ClanFireteamPlatformInvitePreqFailure = 3012
  @JsonValue(3012)
  ClanFireteamPlatformInvitePreqFailure,
  ///ClanFireteamInvalidAuthContext = 3013
  @JsonValue(3013)
  ClanFireteamInvalidAuthContext,
  ///ClanFireteamInvalidAuthProviderPsn = 3014
  @JsonValue(3014)
  ClanFireteamInvalidAuthProviderPsn,
  ///ClanFireteamPs4SessionFull = 3015
  @JsonValue(3015)
  ClanFireteamPs4SessionFull,
  ///ClanFireteamInvalidAuthToken = 3016
  @JsonValue(3016)
  ClanFireteamInvalidAuthToken,
  ///ClanFireteamScheduledFireteamsDisabled = 3017
  @JsonValue(3017)
  ClanFireteamScheduledFireteamsDisabled,
  ///ClanFireteamNotReadyForInvitesNotScheduledYet = 3018
  @JsonValue(3018)
  ClanFireteamNotReadyForInvitesNotScheduledYet,
  ///ClanFireteamNotReadyForInvitesClosed = 3019
  @JsonValue(3019)
  ClanFireteamNotReadyForInvitesClosed,
  ///ClanFireteamScheduledFireteamsRequireAdminPermissions = 3020
  @JsonValue(3020)
  ClanFireteamScheduledFireteamsRequireAdminPermissions,
  ///ClanFireteamNonPublicMustHaveClan = 3021
  @JsonValue(3021)
  ClanFireteamNonPublicMustHaveClan,
  ///ClanFireteamPublicCreationRestriction = 3022
  @JsonValue(3022)
  ClanFireteamPublicCreationRestriction,
  ///ClanFireteamAlreadyJoined = 3023
  @JsonValue(3023)
  ClanFireteamAlreadyJoined,
  ///ClanFireteamScheduledFireteamsRange = 3024
  @JsonValue(3024)
  ClanFireteamScheduledFireteamsRange,
  ///ClanFireteamPublicCreationRestrictionExtended = 3025
  @JsonValue(3025)
  ClanFireteamPublicCreationRestrictionExtended,
  ///ClanFireteamExpired = 3026
  @JsonValue(3026)
  ClanFireteamExpired,
  ///ClanFireteamInvalidAuthProvider = 3027
  @JsonValue(3027)
  ClanFireteamInvalidAuthProvider,
  ///ClanFireteamInvalidAuthProviderXuid = 3028
  @JsonValue(3028)
  ClanFireteamInvalidAuthProviderXuid,
  ///ClanFireteamThrottle = 3029
  @JsonValue(3029)
  ClanFireteamThrottle,
  ///ClanFireteamTooManyOpenScheduledFireteams = 3030
  @JsonValue(3030)
  ClanFireteamTooManyOpenScheduledFireteams,
  ///ClanFireteamCannotReopenScheduledFireteams = 3031
  @JsonValue(3031)
  ClanFireteamCannotReopenScheduledFireteams,
  ///ClanFireteamJoinNoAccountSpecified = 3032
  @JsonValue(3032)
  ClanFireteamJoinNoAccountSpecified,
  ///ClanFireteamMinDestiny2ProgressForCreation = 3033
  @JsonValue(3033)
  ClanFireteamMinDestiny2ProgressForCreation,
  ///ClanFireteamMinDestiny2ProgressForJoin = 3034
  @JsonValue(3034)
  ClanFireteamMinDestiny2ProgressForJoin,
  ///ClanFireteamSMSOrPurchaseRequiredCreate = 3035
  @JsonValue(3035)
  ClanFireteamSMSOrPurchaseRequiredCreate,
  ///ClanFireteamPurchaseRequiredCreate = 3036
  @JsonValue(3036)
  ClanFireteamPurchaseRequiredCreate,
  ///ClanFireteamSMSOrPurchaseRequiredJoin = 3037
  @JsonValue(3037)
  ClanFireteamSMSOrPurchaseRequiredJoin,
  ///ClanFireteamPurchaseRequiredJoin = 3038
  @JsonValue(3038)
  ClanFireteamPurchaseRequiredJoin,
  ///CrossSaveOverriddenAccountNotFound = 3200
  @JsonValue(3200)
  CrossSaveOverriddenAccountNotFound,
  ///CrossSaveTooManyOverriddenPlatforms = 3201
  @JsonValue(3201)
  CrossSaveTooManyOverriddenPlatforms,
  ///CrossSaveNoOverriddenPlatforms = 3202
  @JsonValue(3202)
  CrossSaveNoOverriddenPlatforms,
  ///CrossSavePrimaryAccountNotFound = 3203
  @JsonValue(3203)
  CrossSavePrimaryAccountNotFound,
  ///CrossSaveRequestInvalid = 3204
  @JsonValue(3204)
  CrossSaveRequestInvalid,
  ///CrossSaveBungieAccountValidationFailure = 3206
  @JsonValue(3206)
  CrossSaveBungieAccountValidationFailure,
  ///CrossSaveOverriddenPlatformNotAllowed = 3207
  @JsonValue(3207)
  CrossSaveOverriddenPlatformNotAllowed,
  ///CrossSaveThresholdExceeded = 3208
  @JsonValue(3208)
  CrossSaveThresholdExceeded,
  ///CrossSaveIncompatibleMembershipType = 3209
  @JsonValue(3209)
  CrossSaveIncompatibleMembershipType,
  ///CrossSaveCouldNotFindLinkedAccountForMembershipType = 3210
  @JsonValue(3210)
  CrossSaveCouldNotFindLinkedAccountForMembershipType,
  ///CrossSaveCouldNotCreateDestinyProfileForMembershipType = 3211
  @JsonValue(3211)
  CrossSaveCouldNotCreateDestinyProfileForMembershipType,
  ///CrossSaveErrorCreatingDestinyProfileForMembershipType = 3212
  @JsonValue(3212)
  CrossSaveErrorCreatingDestinyProfileForMembershipType,
  ///CrossSaveCannotOverrideSelf = 3213
  @JsonValue(3213)
  CrossSaveCannotOverrideSelf,
  ///CrossSaveRecentSilverPurchase = 3214
  @JsonValue(3214)
  CrossSaveRecentSilverPurchase,
  ///CrossSaveSilverBalanceNegative = 3215
  @JsonValue(3215)
  CrossSaveSilverBalanceNegative,
  ///CrossSaveAccountNotAuthenticated = 3216
  @JsonValue(3216)
  CrossSaveAccountNotAuthenticated,
  ///ErrorOneAccountAlreadyActive = 3217
  @JsonValue(3217)
  ErrorOneAccountAlreadyActive,
  ///ErrorOneAccountDestinyRestriction = 3218
  @JsonValue(3218)
  ErrorOneAccountDestinyRestriction,
  ///CrossSaveMustMigrateToSteam = 3219
  @JsonValue(3219)
  CrossSaveMustMigrateToSteam,
  ///CrossSaveSteamAlreadyPaired = 3220
  @JsonValue(3220)
  CrossSaveSteamAlreadyPaired,
  ///CrossSaveCannotPairJustSteamAndBlizzard = 3221
  @JsonValue(3221)
  CrossSaveCannotPairJustSteamAndBlizzard,
  ///CrossSaveCannotPairSteamAloneBeforeShadowkeep = 3222
  @JsonValue(3222)
  CrossSaveCannotPairSteamAloneBeforeShadowkeep,
  ///AuthVerificationNotLinkedToAccount = 3300
  @JsonValue(3300)
  AuthVerificationNotLinkedToAccount,
  ///PCMigrationMissingBlizzard = 3400
  @JsonValue(3400)
  PCMigrationMissingBlizzard,
  ///PCMigrationMissingSteam = 3401
  @JsonValue(3401)
  PCMigrationMissingSteam,
  ///PCMigrationInvalidBlizzard = 3402
  @JsonValue(3402)
  PCMigrationInvalidBlizzard,
  ///PCMigrationInvalidSteam = 3403
  @JsonValue(3403)
  PCMigrationInvalidSteam,
  ///PCMigrationUnknownFailure = 3404
  @JsonValue(3404)
  PCMigrationUnknownFailure,
  ///PCMigrationUnknownException = 3405
  @JsonValue(3405)
  PCMigrationUnknownException,
  ///PCMigrationNotLinked = 3406
  @JsonValue(3406)
  PCMigrationNotLinked,
  ///PCMigrationAccountsAlreadyUsed = 3407
  @JsonValue(3407)
  PCMigrationAccountsAlreadyUsed,
  ///PCMigrationStepFailed = 3408
  @JsonValue(3408)
  PCMigrationStepFailed,
  ///PCMigrationInvalidBlizzardCrossSaveState = 3409
  @JsonValue(3409)
  PCMigrationInvalidBlizzardCrossSaveState,
  ///PCMigrationDestinationBanned = 3410
  @JsonValue(3410)
  PCMigrationDestinationBanned,
  ///PCMigrationDestinyFailure = 3411
  @JsonValue(3411)
  PCMigrationDestinyFailure,
  ///PCMigrationSilverTransferFailed = 3412
  @JsonValue(3412)
  PCMigrationSilverTransferFailed,
  ///PCMigrationEntitlementTransferFailed = 3413
  @JsonValue(3413)
  PCMigrationEntitlementTransferFailed,
  ///PCMigrationCannotStompClanFounder = 3414
  @JsonValue(3414)
  PCMigrationCannotStompClanFounder,
  ///UnsupportedBrowser = 3500
  @JsonValue(3500)
  UnsupportedBrowser,
  ///StadiaAccountRequired = 3600
  @JsonValue(3600)
  StadiaAccountRequired,
  ///ErrorPhoneValidationTooManyUses = 3702
  @JsonValue(3702)
  ErrorPhoneValidationTooManyUses,
  ///ErrorPhoneValidationNoAssociatedPhone = 3703
  @JsonValue(3703)
  ErrorPhoneValidationNoAssociatedPhone,
  ///ErrorPhoneValidationCodeInvalid = 3705
  @JsonValue(3705)
  ErrorPhoneValidationCodeInvalid,
  ///ErrorPhoneValidationBanned = 3706
  @JsonValue(3706)
  ErrorPhoneValidationBanned,
  ///ErrorPhoneValidationCodeTooRecentlySent = 3707
  @JsonValue(3707)
  ErrorPhoneValidationCodeTooRecentlySent,
  ///ErrorPhoneValidationCodeExpired = 3708
  @JsonValue(3708)
  ErrorPhoneValidationCodeExpired,
  ///ErrorPhoneValidationInvalidNumberType = 3709
  @JsonValue(3709)
  ErrorPhoneValidationInvalidNumberType,
  ///ErrorPhoneValidationCodeTooRecentlyChecked = 3710
  @JsonValue(3710)
  ErrorPhoneValidationCodeTooRecentlyChecked,
  ///ApplePushErrorUnknown = 3800
  @JsonValue(3800)
  ApplePushErrorUnknown,
  ///ApplePushErrorNull = 3801
  @JsonValue(3801)
  ApplePushErrorNull,
  ///ApplePushErrorTimeout = 3802
  @JsonValue(3802)
  ApplePushErrorTimeout,
  ///ApplePushBadRequest = 3803
  @JsonValue(3803)
  ApplePushBadRequest,
  ///ApplePushFailedAuth = 3804
  @JsonValue(3804)
  ApplePushFailedAuth,
  ///ApplePushThrottled = 3805
  @JsonValue(3805)
  ApplePushThrottled,
  ///ApplePushServiceUnavailable = 3806
  @JsonValue(3806)
  ApplePushServiceUnavailable,
  ///NotAnImageOrVideo = 3807
  @JsonValue(3807)
  NotAnImageOrVideo,
  ///ErrorBungieFriendsBlockFailed = 3900
  @JsonValue(3900)
  ErrorBungieFriendsBlockFailed,
  ///ErrorBungieFriendsAutoReject = 3901
  @JsonValue(3901)
  ErrorBungieFriendsAutoReject,
  ///ErrorBungieFriendsNoRequestFound = 3902
  @JsonValue(3902)
  ErrorBungieFriendsNoRequestFound,
  ///ErrorBungieFriendsAlreadyFriends = 3903
  @JsonValue(3903)
  ErrorBungieFriendsAlreadyFriends,
  ///ErrorBungieFriendsUnableToRemoveRequest = 3904
  @JsonValue(3904)
  ErrorBungieFriendsUnableToRemoveRequest,
  ///ErrorBungieFriendsUnableToRemove = 3905
  @JsonValue(3905)
  ErrorBungieFriendsUnableToRemove,
  ///ErrorBungieFriendsIdenticalSourceTarget = 3906
  @JsonValue(3906)
  ErrorBungieFriendsIdenticalSourceTarget,
  ///ErrorBungieFriendsSelf = 3907
  @JsonValue(3907)
  ErrorBungieFriendsSelf,
  ///ErrorBungieBlockSelf = 3908
  @JsonValue(3908)
  ErrorBungieBlockSelf,
  ///ErrorBungieFriendsListFull = 3910
  @JsonValue(3910)
  ErrorBungieFriendsListFull,
  ///ErrorBungieBlockListFull = 3911
  @JsonValue(3911)
  ErrorBungieBlockListFull,
  ///ErrorEgsUnknown = 4000
  @JsonValue(4000)
  ErrorEgsUnknown,
  ///ErrorEgsBadRequest = 4001
  @JsonValue(4001)
  ErrorEgsBadRequest,
  ///ErrorEgsNotAuthorized = 4002
  @JsonValue(4002)
  ErrorEgsNotAuthorized,
  ///ErrorEgsForbidden = 4003
  @JsonValue(4003)
  ErrorEgsForbidden,
  ///ErrorEgsAccountNotFound = 4004
  @JsonValue(4004)
  ErrorEgsAccountNotFound,
  ///ErrorEgsWebException = 4005
  @JsonValue(4005)
  ErrorEgsWebException,
  ///ErrorEgsUnavailable = 4006
  @JsonValue(4006)
  ErrorEgsUnavailable,
  ///ErrorEgsJwksMissing = 4007
  @JsonValue(4007)
  ErrorEgsJwksMissing,
  ///ErrorEgsJwtMalformedHeader = 4008
  @JsonValue(4008)
  ErrorEgsJwtMalformedHeader,
  ///ErrorEgsJwtMalformedPayload = 4009
  @JsonValue(4009)
  ErrorEgsJwtMalformedPayload,
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension PlatformErrorCodesExtension on PlatformErrorCodes{
  int? get value {
    if (_$PlatformErrorCodesEnumMap.containsKey(this)){
      return _$PlatformErrorCodesEnumMap[this];
    }
    return null;
  }
}

PlatformErrorCodes? decodePlatformErrorCodes (dynamic value) {
  if(value == null) {
    return null;
  }
  if(_$PlatformErrorCodesValueMap.containsKey(value)){
    return _$PlatformErrorCodesValueMap[value];
  }

  return PlatformErrorCodes.ProtectedInvalidEnumValue;
}

int? encodePlatformErrorCodes (PlatformErrorCodes? value) {
  return value?.value;
}

const Map<PlatformErrorCodes, int> _$PlatformErrorCodesEnumMap = <PlatformErrorCodes, int>{
    PlatformErrorCodes.None:0,
    PlatformErrorCodes.Success:1,
    PlatformErrorCodes.TransportException:2,
    PlatformErrorCodes.UnhandledException:3,
    PlatformErrorCodes.NotImplemented:4,
    PlatformErrorCodes.SystemDisabled:5,
    PlatformErrorCodes.FailedToLoadAvailableLocalesConfiguration:6,
    PlatformErrorCodes.ParameterParseFailure:7,
    PlatformErrorCodes.ParameterInvalidRange:8,
    PlatformErrorCodes.BadRequest:9,
    PlatformErrorCodes.AuthenticationInvalid:10,
    PlatformErrorCodes.DataNotFound:11,
    PlatformErrorCodes.InsufficientPrivileges:12,
    PlatformErrorCodes.Duplicate:13,
    PlatformErrorCodes.UnknownSqlResult:14,
    PlatformErrorCodes.ValidationError:15,
    PlatformErrorCodes.ValidationMissingFieldError:16,
    PlatformErrorCodes.ValidationInvalidInputError:17,
    PlatformErrorCodes.InvalidParameters:18,
    PlatformErrorCodes.ParameterNotFound:19,
    PlatformErrorCodes.UnhandledHttpException:20,
    PlatformErrorCodes.NotFound:21,
    PlatformErrorCodes.WebAuthModuleAsyncFailed:22,
    PlatformErrorCodes.InvalidReturnValue:23,
    PlatformErrorCodes.UserBanned:24,
    PlatformErrorCodes.InvalidPostBody:25,
    PlatformErrorCodes.MissingPostBody:26,
    PlatformErrorCodes.ExternalServiceTimeout:27,
    PlatformErrorCodes.ValidationLengthError:28,
    PlatformErrorCodes.ValidationRangeError:29,
    PlatformErrorCodes.JsonDeserializationError:30,
    PlatformErrorCodes.ThrottleLimitExceeded:31,
    PlatformErrorCodes.ValidationTagError:32,
    PlatformErrorCodes.ValidationProfanityError:33,
    PlatformErrorCodes.ValidationUrlFormatError:34,
    PlatformErrorCodes.ThrottleLimitExceededMinutes:35,
    PlatformErrorCodes.ThrottleLimitExceededMomentarily:36,
    PlatformErrorCodes.ThrottleLimitExceededSeconds:37,
    PlatformErrorCodes.ExternalServiceUnknown:38,
    PlatformErrorCodes.ValidationWordLengthError:39,
    PlatformErrorCodes.ValidationInvisibleUnicode:40,
    PlatformErrorCodes.ValidationBadNames:41,
    PlatformErrorCodes.ExternalServiceFailed:42,
    PlatformErrorCodes.ServiceRetired:43,
    PlatformErrorCodes.UnknownSqlException:44,
    PlatformErrorCodes.UnsupportedLocale:45,
    PlatformErrorCodes.InvalidPageNumber:46,
    PlatformErrorCodes.MaximumPageSizeExceeded:47,
    PlatformErrorCodes.ServiceUnsupported:48,
    PlatformErrorCodes.ValidationMaximumUnicodeCombiningCharacters:49,
    PlatformErrorCodes.ValidationMaximumSequentialCarriageReturns:50,
    PlatformErrorCodes.PerEndpointRequestThrottleExceeded:51,
    PlatformErrorCodes.AuthContextCacheAssertion:52,
    PlatformErrorCodes.ExPlatformStringValidationError:53,
    PlatformErrorCodes.PerApplicationThrottleExceeded:54,
    PlatformErrorCodes.PerApplicationAnonymousThrottleExceeded:55,
    PlatformErrorCodes.PerApplicationAuthenticatedThrottleExceeded:56,
    PlatformErrorCodes.PerUserThrottleExceeded:57,
    PlatformErrorCodes.PayloadSignatureVerificationFailure:58,
    PlatformErrorCodes.InvalidServiceAuthContext:59,
    PlatformErrorCodes.ObsoleteCredentialType:89,
    PlatformErrorCodes.UnableToUnPairMobileApp:90,
    PlatformErrorCodes.UnableToPairMobileApp:91,
    PlatformErrorCodes.CannotUseMobileAuthWithNonMobileProvider:92,
    PlatformErrorCodes.MissingDeviceCookie:93,
    PlatformErrorCodes.FacebookTokenExpired:94,
    PlatformErrorCodes.AuthTicketRequired:95,
    PlatformErrorCodes.CookieContextRequired:96,
    PlatformErrorCodes.UnknownAuthenticationError:97,
    PlatformErrorCodes.BungieNetAccountCreationRequired:98,
    PlatformErrorCodes.WebAuthRequired:99,
    PlatformErrorCodes.ContentUnknownSqlResult:100,
    PlatformErrorCodes.ContentNeedUniquePath:101,
    PlatformErrorCodes.ContentSqlException:102,
    PlatformErrorCodes.ContentNotFound:103,
    PlatformErrorCodes.ContentSuccessWithTagAddFail:104,
    PlatformErrorCodes.ContentSearchMissingParameters:105,
    PlatformErrorCodes.ContentInvalidId:106,
    PlatformErrorCodes.ContentPhysicalFileDeletionError:107,
    PlatformErrorCodes.ContentPhysicalFileCreationError:108,
    PlatformErrorCodes.ContentPerforceSubmissionError:109,
    PlatformErrorCodes.ContentPerforceInitializationError:110,
    PlatformErrorCodes.ContentDeploymentPackageNotReadyError:111,
    PlatformErrorCodes.ContentUploadFailed:112,
    PlatformErrorCodes.ContentTooManyResults:113,
    PlatformErrorCodes.ContentInvalidState:115,
    PlatformErrorCodes.ContentNavigationParentNotFound:116,
    PlatformErrorCodes.ContentNavigationParentUpdateError:117,
    PlatformErrorCodes.DeploymentPackageNotEditable:118,
    PlatformErrorCodes.ContentValidationError:119,
    PlatformErrorCodes.ContentPropertiesValidationError:120,
    PlatformErrorCodes.ContentTypeNotFound:121,
    PlatformErrorCodes.DeploymentPackageNotFound:122,
    PlatformErrorCodes.ContentSearchInvalidParameters:123,
    PlatformErrorCodes.ContentItemPropertyAggregationError:124,
    PlatformErrorCodes.DeploymentPackageFileNotFound:125,
    PlatformErrorCodes.ContentPerforceFileHistoryNotFound:126,
    PlatformErrorCodes.ContentAssetZipCreationFailure:127,
    PlatformErrorCodes.ContentAssetZipCreationBusy:128,
    PlatformErrorCodes.ContentProjectNotFound:129,
    PlatformErrorCodes.ContentFolderNotFound:130,
    PlatformErrorCodes.ContentPackagesInconsistent:131,
    PlatformErrorCodes.ContentPackagesInvalidState:132,
    PlatformErrorCodes.ContentPackagesInconsistentType:133,
    PlatformErrorCodes.ContentCannotDeletePackage:134,
    PlatformErrorCodes.ContentLockedForChanges:135,
    PlatformErrorCodes.ContentFileUploadFailed:136,
    PlatformErrorCodes.ContentNotReviewed:137,
    PlatformErrorCodes.ContentPermissionDenied:138,
    PlatformErrorCodes.ContentInvalidExternalUrl:139,
    PlatformErrorCodes.ContentExternalFileCannotBeImportedLocally:140,
    PlatformErrorCodes.ContentTagSaveFailure:141,
    PlatformErrorCodes.ContentPerforceUnmatchedFileError:142,
    PlatformErrorCodes.ContentPerforceChangelistResultNotFound:143,
    PlatformErrorCodes.ContentPerforceChangelistFileItemsNotFound:144,
    PlatformErrorCodes.ContentPerforceInvalidRevisionError:145,
    PlatformErrorCodes.ContentUnloadedSaveResult:146,
    PlatformErrorCodes.ContentPropertyInvalidNumber:147,
    PlatformErrorCodes.ContentPropertyInvalidUrl:148,
    PlatformErrorCodes.ContentPropertyInvalidDate:149,
    PlatformErrorCodes.ContentPropertyInvalidSet:150,
    PlatformErrorCodes.ContentPropertyCannotDeserialize:151,
    PlatformErrorCodes.ContentRegexValidationFailOnProperty:152,
    PlatformErrorCodes.ContentMaxLengthFailOnProperty:153,
    PlatformErrorCodes.ContentPropertyUnexpectedDeserializationError:154,
    PlatformErrorCodes.ContentPropertyRequired:155,
    PlatformErrorCodes.ContentCannotCreateFile:156,
    PlatformErrorCodes.ContentInvalidMigrationFile:157,
    PlatformErrorCodes.ContentMigrationAlteringProcessedItem:158,
    PlatformErrorCodes.ContentPropertyDefinitionNotFound:159,
    PlatformErrorCodes.ContentReviewDataChanged:160,
    PlatformErrorCodes.ContentRollbackRevisionNotInPackage:161,
    PlatformErrorCodes.ContentItemNotBasedOnLatestRevision:162,
    PlatformErrorCodes.ContentUnauthorized:163,
    PlatformErrorCodes.ContentCannotCreateDeploymentPackage:164,
    PlatformErrorCodes.ContentUserNotFound:165,
    PlatformErrorCodes.ContentLocalePermissionDenied:166,
    PlatformErrorCodes.ContentInvalidLinkToInternalEnvironment:167,
    PlatformErrorCodes.ContentInvalidBlacklistedContent:168,
    PlatformErrorCodes.ContentMacroMalformedNoContentId:169,
    PlatformErrorCodes.ContentMacroMalformedNoTemplateType:170,
    PlatformErrorCodes.ContentIllegalBNetMembershipId:171,
    PlatformErrorCodes.ContentLocaleDidNotMatchExpected:172,
    PlatformErrorCodes.ContentBabelCallFailed:173,
    PlatformErrorCodes.ContentEnglishPostLiveForbidden:174,
    PlatformErrorCodes.ContentLocaleEditPermissionDenied:175,
    PlatformErrorCodes.ContentStackUnknownError:176,
    PlatformErrorCodes.ContentStackNotFound:177,
    PlatformErrorCodes.ContentStackRateLimited:178,
    PlatformErrorCodes.ContentStackTimeout:179,
    PlatformErrorCodes.ContentStackServiceError:180,
    PlatformErrorCodes.ContentStackDeserializationFailure:181,
    PlatformErrorCodes.UserNonUniqueName:200,
    PlatformErrorCodes.UserManualLinkingStepRequired:201,
    PlatformErrorCodes.UserCreateUnknownSqlResult:202,
    PlatformErrorCodes.UserCreateUnknownSqlException:203,
    PlatformErrorCodes.UserMalformedMembershipId:204,
    PlatformErrorCodes.UserCannotFindRequestedUser:205,
    PlatformErrorCodes.UserCannotLoadAccountCredentialLinkInfo:206,
    PlatformErrorCodes.UserInvalidMobileAppType:207,
    PlatformErrorCodes.UserMissingMobilePairingInfo:208,
    PlatformErrorCodes.UserCannotGenerateMobileKeyWhileUsingMobileCredential:209,
    PlatformErrorCodes.UserGenerateMobileKeyExistingSlotCollision:210,
    PlatformErrorCodes.UserDisplayNameMissingOrInvalid:211,
    PlatformErrorCodes.UserCannotLoadAccountProfileData:212,
    PlatformErrorCodes.UserCannotSaveUserProfileData:213,
    PlatformErrorCodes.UserEmailMissingOrInvalid:214,
    PlatformErrorCodes.UserTermsOfUseRequired:215,
    PlatformErrorCodes.UserCannotCreateNewAccountWhileLoggedIn:216,
    PlatformErrorCodes.UserCannotResolveCentralAccount:217,
    PlatformErrorCodes.UserInvalidAvatar:218,
    PlatformErrorCodes.UserMissingCreatedUserResult:219,
    PlatformErrorCodes.UserCannotChangeUniqueNameYet:220,
    PlatformErrorCodes.UserCannotChangeDisplayNameYet:221,
    PlatformErrorCodes.UserCannotChangeEmail:222,
    PlatformErrorCodes.UserUniqueNameMustStartWithLetter:223,
    PlatformErrorCodes.UserNoLinkedAccountsSupportFriendListings:224,
    PlatformErrorCodes.UserAcknowledgmentTableFull:225,
    PlatformErrorCodes.UserCreationDestinyMembershipRequired:226,
    PlatformErrorCodes.UserFriendsTokenNeedsRefresh:227,
    PlatformErrorCodes.UserEmailValidationUnknown:228,
    PlatformErrorCodes.UserEmailValidationLimit:229,
    PlatformErrorCodes.TransactionEmailSendFailure:230,
    PlatformErrorCodes.MailHookPermissionFailure:231,
    PlatformErrorCodes.MailServiceRateLimit:232,
    PlatformErrorCodes.UserEmailMustBeVerified:233,
    PlatformErrorCodes.UserMustAllowCustomerServiceEmails:234,
    PlatformErrorCodes.NonTransactionalEmailSendFailure:235,
    PlatformErrorCodes.UnknownErrorSettingGlobalDisplayName:236,
    PlatformErrorCodes.DuplicateGlobalDisplayName:237,
    PlatformErrorCodes.ErrorRunningNameValidationChecks:238,
    PlatformErrorCodes.ErrorDatabaseGlobalName:239,
    PlatformErrorCodes.ErrorNoAvailableNameChanges:240,
    PlatformErrorCodes.ErrorNameAlreadySetToInput:241,
    PlatformErrorCodes.UserDisplayNameLessThanMinLength:242,
    PlatformErrorCodes.UserDisplayNameGreaterThanMaxLength:243,
    PlatformErrorCodes.UserDisplayNameContainsUnacceptableOrInvalidContent:244,
    PlatformErrorCodes.MessagingUnknownError:300,
    PlatformErrorCodes.MessagingSelfError:301,
    PlatformErrorCodes.MessagingSendThrottle:302,
    PlatformErrorCodes.MessagingNoBody:303,
    PlatformErrorCodes.MessagingTooManyUsers:304,
    PlatformErrorCodes.MessagingCanNotLeaveConversation:305,
    PlatformErrorCodes.MessagingUnableToSend:306,
    PlatformErrorCodes.MessagingDeletedUserForbidden:307,
    PlatformErrorCodes.MessagingCannotDeleteExternalConversation:308,
    PlatformErrorCodes.MessagingGroupChatDisabled:309,
    PlatformErrorCodes.MessagingMustIncludeSelfInPrivateMessage:310,
    PlatformErrorCodes.MessagingSenderIsBanned:311,
    PlatformErrorCodes.MessagingGroupOptionalChatExceededMaximum:312,
    PlatformErrorCodes.PrivateMessagingRequiresDestinyMembership:313,
    PlatformErrorCodes.AddSurveyAnswersUnknownSqlException:400,
    PlatformErrorCodes.ForumBodyCannotBeEmpty:500,
    PlatformErrorCodes.ForumSubjectCannotBeEmptyOnTopicPost:501,
    PlatformErrorCodes.ForumCannotLocateParentPost:502,
    PlatformErrorCodes.ForumThreadLockedForReplies:503,
    PlatformErrorCodes.ForumUnknownSqlResultDuringCreatePost:504,
    PlatformErrorCodes.ForumUnknownTagCreationError:505,
    PlatformErrorCodes.ForumUnknownSqlResultDuringTagItem:506,
    PlatformErrorCodes.ForumUnknownExceptionCreatePost:507,
    PlatformErrorCodes.ForumQuestionMustBeTopicPost:508,
    PlatformErrorCodes.ForumExceptionDuringTagSearch:509,
    PlatformErrorCodes.ForumExceptionDuringTopicRetrieval:510,
    PlatformErrorCodes.ForumAliasedTagError:511,
    PlatformErrorCodes.ForumCannotLocateThread:512,
    PlatformErrorCodes.ForumUnknownExceptionEditPost:513,
    PlatformErrorCodes.ForumCannotLocatePost:514,
    PlatformErrorCodes.ForumUnknownExceptionGetOrCreateTags:515,
    PlatformErrorCodes.ForumEditPermissionDenied:516,
    PlatformErrorCodes.ForumUnknownSqlResultDuringTagIdRetrieval:517,
    PlatformErrorCodes.ForumCannotGetRating:518,
    PlatformErrorCodes.ForumUnknownExceptionGetRating:519,
    PlatformErrorCodes.ForumRatingsAccessError:520,
    PlatformErrorCodes.ForumRelatedPostAccessError:521,
    PlatformErrorCodes.ForumLatestReplyAccessError:522,
    PlatformErrorCodes.ForumUserStatusAccessError:523,
    PlatformErrorCodes.ForumAuthorAccessError:524,
    PlatformErrorCodes.ForumGroupAccessError:525,
    PlatformErrorCodes.ForumUrlExpectedButMissing:526,
    PlatformErrorCodes.ForumRepliesCannotBeEmpty:527,
    PlatformErrorCodes.ForumRepliesCannotBeInDifferentGroups:528,
    PlatformErrorCodes.ForumSubTopicCannotBeCreatedAtThisThreadLevel:529,
    PlatformErrorCodes.ForumCannotCreateContentTopic:530,
    PlatformErrorCodes.ForumTopicDoesNotExist:531,
    PlatformErrorCodes.ForumContentCommentsNotAllowed:532,
    PlatformErrorCodes.ForumUnknownSqlResultDuringEditPost:533,
    PlatformErrorCodes.ForumUnknownSqlResultDuringGetPost:534,
    PlatformErrorCodes.ForumPostValidationBadUrl:535,
    PlatformErrorCodes.ForumBodyTooLong:536,
    PlatformErrorCodes.ForumSubjectTooLong:537,
    PlatformErrorCodes.ForumAnnouncementNotAllowed:538,
    PlatformErrorCodes.ForumCannotShareOwnPost:539,
    PlatformErrorCodes.ForumEditNoOp:540,
    PlatformErrorCodes.ForumUnknownDatabaseErrorDuringGetPost:541,
    PlatformErrorCodes.ForumExceeedMaximumRowLimit:542,
    PlatformErrorCodes.ForumCannotSharePrivatePost:543,
    PlatformErrorCodes.ForumCannotCrossPostBetweenGroups:544,
    PlatformErrorCodes.ForumIncompatibleCategories:555,
    PlatformErrorCodes.ForumCannotUseTheseCategoriesOnNonTopicPost:556,
    PlatformErrorCodes.ForumCanOnlyDeleteTopics:557,
    PlatformErrorCodes.ForumDeleteSqlException:558,
    PlatformErrorCodes.ForumDeleteSqlUnknownResult:559,
    PlatformErrorCodes.ForumTooManyTags:560,
    PlatformErrorCodes.ForumCanOnlyRateTopics:561,
    PlatformErrorCodes.ForumBannedPostsCannotBeEdited:562,
    PlatformErrorCodes.ForumThreadRootIsBanned:563,
    PlatformErrorCodes.ForumCannotUseOfficialTagCategoryAsTag:564,
    PlatformErrorCodes.ForumAnswerCannotBeMadeOnCreatePost:565,
    PlatformErrorCodes.ForumAnswerCannotBeMadeOnEditPost:566,
    PlatformErrorCodes.ForumAnswerPostIdIsNotADirectReplyOfQuestion:567,
    PlatformErrorCodes.ForumAnswerTopicIdIsNotAQuestion:568,
    PlatformErrorCodes.ForumUnknownExceptionDuringMarkAnswer:569,
    PlatformErrorCodes.ForumUnknownSqlResultDuringMarkAnswer:570,
    PlatformErrorCodes.ForumCannotRateYourOwnPosts:571,
    PlatformErrorCodes.ForumPollsMustBeTheFirstPostInTopic:572,
    PlatformErrorCodes.ForumInvalidPollInput:573,
    PlatformErrorCodes.ForumGroupAdminEditNonMember:574,
    PlatformErrorCodes.ForumCannotEditModeratorEditedPost:575,
    PlatformErrorCodes.ForumRequiresDestinyMembership:576,
    PlatformErrorCodes.ForumUnexpectedError:577,
    PlatformErrorCodes.ForumAgeLock:578,
    PlatformErrorCodes.ForumMaxPages:579,
    PlatformErrorCodes.ForumMaxPagesOldestFirst:580,
    PlatformErrorCodes.ForumCannotApplyForumIdWithoutTags:581,
    PlatformErrorCodes.ForumCannotApplyForumIdToNonTopics:582,
    PlatformErrorCodes.ForumCannotDownvoteCommunityCreations:583,
    PlatformErrorCodes.ForumTopicsMustHaveOfficialCategory:584,
    PlatformErrorCodes.ForumRecruitmentTopicMalformed:585,
    PlatformErrorCodes.ForumRecruitmentTopicNotFound:586,
    PlatformErrorCodes.ForumRecruitmentTopicNoSlotsRemaining:587,
    PlatformErrorCodes.ForumRecruitmentTopicKickBan:588,
    PlatformErrorCodes.ForumRecruitmentTopicRequirementsNotMet:589,
    PlatformErrorCodes.ForumRecruitmentTopicNoPlayers:590,
    PlatformErrorCodes.ForumRecruitmentApproveFailMessageBan:591,
    PlatformErrorCodes.ForumRecruitmentGlobalBan:592,
    PlatformErrorCodes.ForumUserBannedFromThisTopic:593,
    PlatformErrorCodes.ForumRecruitmentFireteamMembersOnly:594,
    PlatformErrorCodes.ForumRequiresDestiny2Progress:595,
    PlatformErrorCodes.ForumRequiresDestiny2EntitlementPurchase:596,
    PlatformErrorCodes.GroupMembershipApplicationAlreadyResolved:601,
    PlatformErrorCodes.GroupMembershipAlreadyApplied:602,
    PlatformErrorCodes.GroupMembershipInsufficientPrivileges:603,
    PlatformErrorCodes.GroupIdNotReturnedFromCreation:604,
    PlatformErrorCodes.GroupSearchInvalidParameters:605,
    PlatformErrorCodes.GroupMembershipPendingApplicationNotFound:606,
    PlatformErrorCodes.GroupInvalidId:607,
    PlatformErrorCodes.GroupInvalidMembershipId:608,
    PlatformErrorCodes.GroupInvalidMembershipType:609,
    PlatformErrorCodes.GroupMissingTags:610,
    PlatformErrorCodes.GroupMembershipNotFound:611,
    PlatformErrorCodes.GroupInvalidRating:612,
    PlatformErrorCodes.GroupUserFollowingAccessError:613,
    PlatformErrorCodes.GroupUserMembershipAccessError:614,
    PlatformErrorCodes.GroupCreatorAccessError:615,
    PlatformErrorCodes.GroupAdminAccessError:616,
    PlatformErrorCodes.GroupPrivatePostNotViewable:617,
    PlatformErrorCodes.GroupMembershipNotLoggedIn:618,
    PlatformErrorCodes.GroupNotDeleted:619,
    PlatformErrorCodes.GroupUnknownErrorUndeletingGroup:620,
    PlatformErrorCodes.GroupDeleted:621,
    PlatformErrorCodes.GroupNotFound:622,
    PlatformErrorCodes.GroupMemberBanned:623,
    PlatformErrorCodes.GroupMembershipClosed:624,
    PlatformErrorCodes.GroupPrivatePostOverrideError:625,
    PlatformErrorCodes.GroupNameTaken:626,
    PlatformErrorCodes.GroupDeletionGracePeriodExpired:627,
    PlatformErrorCodes.GroupCannotCheckBanStatus:628,
    PlatformErrorCodes.GroupMaximumMembershipCountReached:629,
    PlatformErrorCodes.NoDestinyAccountForClanPlatform:630,
    PlatformErrorCodes.AlreadyRequestingMembershipForClanPlatform:631,
    PlatformErrorCodes.AlreadyClanMemberOnPlatform:632,
    PlatformErrorCodes.GroupJoinedCannotSetClanName:633,
    PlatformErrorCodes.GroupLeftCannotClearClanName:634,
    PlatformErrorCodes.GroupRelationshipRequestPending:635,
    PlatformErrorCodes.GroupRelationshipRequestBlocked:636,
    PlatformErrorCodes.GroupRelationshipRequestNotFound:637,
    PlatformErrorCodes.GroupRelationshipBlockNotFound:638,
    PlatformErrorCodes.GroupRelationshipNotFound:639,
    PlatformErrorCodes.GroupAlreadyAllied:641,
    PlatformErrorCodes.GroupAlreadyMember:642,
    PlatformErrorCodes.GroupRelationshipAlreadyExists:643,
    PlatformErrorCodes.InvalidGroupTypesForRelationshipRequest:644,
    PlatformErrorCodes.GroupAtMaximumAlliances:646,
    PlatformErrorCodes.GroupCannotSetClanOnlySettings:647,
    PlatformErrorCodes.ClanCannotSetTwoDefaultPostTypes:648,
    PlatformErrorCodes.GroupMemberInvalidMemberType:649,
    PlatformErrorCodes.GroupInvalidPlatformType:650,
    PlatformErrorCodes.GroupMemberInvalidSort:651,
    PlatformErrorCodes.GroupInvalidResolveState:652,
    PlatformErrorCodes.ClanAlreadyEnabledForPlatform:653,
    PlatformErrorCodes.ClanNotEnabledForPlatform:654,
    PlatformErrorCodes.ClanEnabledButCouldNotJoinNoAccount:655,
    PlatformErrorCodes.ClanEnabledButCouldNotJoinAlreadyMember:656,
    PlatformErrorCodes.ClanCannotJoinNoCredential:657,
    PlatformErrorCodes.NoClanMembershipForPlatform:658,
    PlatformErrorCodes.GroupToGroupFollowLimitReached:659,
    PlatformErrorCodes.ChildGroupAlreadyInAlliance:660,
    PlatformErrorCodes.OwnerGroupAlreadyInAlliance:661,
    PlatformErrorCodes.AllianceOwnerCannotJoinAlliance:662,
    PlatformErrorCodes.GroupNotInAlliance:663,
    PlatformErrorCodes.ChildGroupCannotInviteToAlliance:664,
    PlatformErrorCodes.GroupToGroupAlreadyFollowed:665,
    PlatformErrorCodes.GroupToGroupNotFollowing:666,
    PlatformErrorCodes.ClanMaximumMembershipReached:667,
    PlatformErrorCodes.ClanNameNotValid:668,
    PlatformErrorCodes.ClanNameNotValidError:669,
    PlatformErrorCodes.AllianceOwnerNotDefined:670,
    PlatformErrorCodes.AllianceChildNotDefined:671,
    PlatformErrorCodes.ClanCultureIllegalCharacters:672,
    PlatformErrorCodes.ClanTagIllegalCharacters:673,
    PlatformErrorCodes.ClanRequiresInvitation:674,
    PlatformErrorCodes.ClanMembershipClosed:675,
    PlatformErrorCodes.ClanInviteAlreadyMember:676,
    PlatformErrorCodes.GroupInviteAlreadyMember:677,
    PlatformErrorCodes.GroupJoinApprovalRequired:678,
    PlatformErrorCodes.ClanTagRequired:679,
    PlatformErrorCodes.GroupNameCannotStartOrEndWithWhiteSpace:680,
    PlatformErrorCodes.ClanCallsignCannotStartOrEndWithWhiteSpace:681,
    PlatformErrorCodes.ClanMigrationFailed:682,
    PlatformErrorCodes.ClanNotEnabledAlreadyMemberOfAnotherClan:683,
    PlatformErrorCodes.GroupModerationNotPermittedOnNonMembers:684,
    PlatformErrorCodes.ClanCreationInWorldServerFailed:685,
    PlatformErrorCodes.ClanNotFound:686,
    PlatformErrorCodes.ClanMembershipLevelDoesNotPermitThatAction:687,
    PlatformErrorCodes.ClanMemberNotFound:688,
    PlatformErrorCodes.ClanMissingMembershipApprovers:689,
    PlatformErrorCodes.ClanInWrongStateForRequestedAction:690,
    PlatformErrorCodes.ClanNameAlreadyUsed:691,
    PlatformErrorCodes.ClanTooFewMembers:692,
    PlatformErrorCodes.ClanInfoCannotBeWhitespace:693,
    PlatformErrorCodes.GroupCultureThrottle:694,
    PlatformErrorCodes.ClanTargetDisallowsInvites:695,
    PlatformErrorCodes.ClanInvalidOperation:696,
    PlatformErrorCodes.ClanFounderCannotLeaveWithoutAbdication:697,
    PlatformErrorCodes.ClanNameReserved:698,
    PlatformErrorCodes.ClanApplicantInClanSoNowInvited:699,
    PlatformErrorCodes.ActivitiesUnknownException:701,
    PlatformErrorCodes.ActivitiesParameterNull:702,
    PlatformErrorCodes.ActivityCountsDiabled:703,
    PlatformErrorCodes.ActivitySearchInvalidParameters:704,
    PlatformErrorCodes.ActivityPermissionDenied:705,
    PlatformErrorCodes.ShareAlreadyShared:706,
    PlatformErrorCodes.ActivityLoggingDisabled:707,
    PlatformErrorCodes.ClanRequiresExistingDestinyAccount:750,
    PlatformErrorCodes.ClanNameRestricted:751,
    PlatformErrorCodes.ClanCreationBan:752,
    PlatformErrorCodes.ClanCreationTenureRequirementsNotMet:753,
    PlatformErrorCodes.ClanFieldContainsReservedTerms:754,
    PlatformErrorCodes.ClanFieldContainsInappropriateContent:755,
    PlatformErrorCodes.ItemAlreadyFollowed:801,
    PlatformErrorCodes.ItemNotFollowed:802,
    PlatformErrorCodes.CannotFollowSelf:803,
    PlatformErrorCodes.GroupFollowLimitExceeded:804,
    PlatformErrorCodes.TagFollowLimitExceeded:805,
    PlatformErrorCodes.UserFollowLimitExceeded:806,
    PlatformErrorCodes.FollowUnsupportedEntityType:807,
    PlatformErrorCodes.NoValidTagsInList:900,
    PlatformErrorCodes.BelowMinimumSuggestionLength:901,
    PlatformErrorCodes.CannotGetSuggestionsOnMultipleTagsSimultaneously:902,
    PlatformErrorCodes.NotAValidPartialTag:903,
    PlatformErrorCodes.TagSuggestionsUnknownSqlResult:904,
    PlatformErrorCodes.TagsUnableToLoadPopularTagsFromDatabase:905,
    PlatformErrorCodes.TagInvalid:906,
    PlatformErrorCodes.TagNotFound:907,
    PlatformErrorCodes.SingleTagExpected:908,
    PlatformErrorCodes.TagsExceededMaximumPerItem:909,
    PlatformErrorCodes.IgnoreInvalidParameters:1000,
    PlatformErrorCodes.IgnoreSqlException:1001,
    PlatformErrorCodes.IgnoreErrorRetrievingGroupPermissions:1002,
    PlatformErrorCodes.IgnoreErrorInsufficientPermission:1003,
    PlatformErrorCodes.IgnoreErrorRetrievingItem:1004,
    PlatformErrorCodes.IgnoreCannotIgnoreSelf:1005,
    PlatformErrorCodes.IgnoreIllegalType:1006,
    PlatformErrorCodes.IgnoreNotFound:1007,
    PlatformErrorCodes.IgnoreUserGloballyIgnored:1008,
    PlatformErrorCodes.IgnoreUserIgnored:1009,
    PlatformErrorCodes.TargetUserIgnored:1010,
    PlatformErrorCodes.NotificationSettingInvalid:1100,
    PlatformErrorCodes.PsnApiExpiredAccessToken:1204,
    PlatformErrorCodes.PSNExForbidden:1205,
    PlatformErrorCodes.PSNExSystemDisabled:1218,
    PlatformErrorCodes.PsnApiErrorCodeUnknown:1223,
    PlatformErrorCodes.PsnApiErrorWebException:1224,
    PlatformErrorCodes.PsnApiBadRequest:1225,
    PlatformErrorCodes.PsnApiAccessTokenRequired:1226,
    PlatformErrorCodes.PsnApiInvalidAccessToken:1227,
    PlatformErrorCodes.PsnApiBannedUser:1229,
    PlatformErrorCodes.PsnApiAccountUpgradeRequired:1230,
    PlatformErrorCodes.PsnApiServiceTemporarilyUnavailable:1231,
    PlatformErrorCodes.PsnApiServerBusy:1232,
    PlatformErrorCodes.PsnApiUnderMaintenance:1233,
    PlatformErrorCodes.PsnApiProfileUserNotFound:1234,
    PlatformErrorCodes.PsnApiProfilePrivacyRestriction:1235,
    PlatformErrorCodes.PsnApiProfileUnderMaintenance:1236,
    PlatformErrorCodes.PsnApiAccountAttributeMissing:1237,
    PlatformErrorCodes.PsnApiNoPermission:1238,
    PlatformErrorCodes.PsnApiTargetUserBlocked:1239,
    PlatformErrorCodes.PsnApiJwksMissing:1240,
    PlatformErrorCodes.PsnApiJwtMalformedHeader:1241,
    PlatformErrorCodes.PsnApiJwtMalformedPayload:1242,
    PlatformErrorCodes.XblExSystemDisabled:1300,
    PlatformErrorCodes.XblExUnknownError:1301,
    PlatformErrorCodes.XblApiErrorWebException:1302,
    PlatformErrorCodes.XblStsTokenInvalid:1303,
    PlatformErrorCodes.XblStsMissingToken:1304,
    PlatformErrorCodes.XblStsExpiredToken:1305,
    PlatformErrorCodes.XblAccessToTheSandboxDenied:1306,
    PlatformErrorCodes.XblMsaResponseMissing:1307,
    PlatformErrorCodes.XblMsaAccessTokenExpired:1308,
    PlatformErrorCodes.XblMsaInvalidRequest:1309,
    PlatformErrorCodes.XblMsaFriendsRequireSignIn:1310,
    PlatformErrorCodes.XblUserActionRequired:1311,
    PlatformErrorCodes.XblParentalControls:1312,
    PlatformErrorCodes.XblDeveloperAccount:1313,
    PlatformErrorCodes.XblUserTokenExpired:1314,
    PlatformErrorCodes.XblUserTokenInvalid:1315,
    PlatformErrorCodes.XblOffline:1316,
    PlatformErrorCodes.XblUnknownErrorCode:1317,
    PlatformErrorCodes.XblMsaInvalidGrant:1318,
    PlatformErrorCodes.ReportNotYetResolved:1400,
    PlatformErrorCodes.ReportOverturnDoesNotChangeDecision:1401,
    PlatformErrorCodes.ReportNotFound:1402,
    PlatformErrorCodes.ReportAlreadyReported:1403,
    PlatformErrorCodes.ReportInvalidResolution:1404,
    PlatformErrorCodes.ReportNotAssignedToYou:1405,
    PlatformErrorCodes.LegacyGameStatsSystemDisabled:1500,
    PlatformErrorCodes.LegacyGameStatsUnknownError:1501,
    PlatformErrorCodes.LegacyGameStatsMalformedSneakerNetCode:1502,
    PlatformErrorCodes.DestinyAccountAcquisitionFailure:1600,
    PlatformErrorCodes.DestinyAccountNotFound:1601,
    PlatformErrorCodes.DestinyBuildStatsDatabaseError:1602,
    PlatformErrorCodes.DestinyCharacterStatsDatabaseError:1603,
    PlatformErrorCodes.DestinyPvPStatsDatabaseError:1604,
    PlatformErrorCodes.DestinyPvEStatsDatabaseError:1605,
    PlatformErrorCodes.DestinyGrimoireStatsDatabaseError:1606,
    PlatformErrorCodes.DestinyStatsParameterMembershipTypeParseError:1607,
    PlatformErrorCodes.DestinyStatsParameterMembershipIdParseError:1608,
    PlatformErrorCodes.DestinyStatsParameterRangeParseError:1609,
    PlatformErrorCodes.DestinyStringItemHashNotFound:1610,
    PlatformErrorCodes.DestinyStringSetNotFound:1611,
    PlatformErrorCodes.DestinyContentLookupNotFoundForKey:1612,
    PlatformErrorCodes.DestinyContentItemNotFound:1613,
    PlatformErrorCodes.DestinyContentSectionNotFound:1614,
    PlatformErrorCodes.DestinyContentPropertyNotFound:1615,
    PlatformErrorCodes.DestinyContentConfigNotFound:1616,
    PlatformErrorCodes.DestinyContentPropertyBucketValueNotFound:1617,
    PlatformErrorCodes.DestinyUnexpectedError:1618,
    PlatformErrorCodes.DestinyInvalidAction:1619,
    PlatformErrorCodes.DestinyCharacterNotFound:1620,
    PlatformErrorCodes.DestinyInvalidFlag:1621,
    PlatformErrorCodes.DestinyInvalidRequest:1622,
    PlatformErrorCodes.DestinyItemNotFound:1623,
    PlatformErrorCodes.DestinyInvalidCustomizationChoices:1624,
    PlatformErrorCodes.DestinyVendorItemNotFound:1625,
    PlatformErrorCodes.DestinyInternalError:1626,
    PlatformErrorCodes.DestinyVendorNotFound:1627,
    PlatformErrorCodes.DestinyRecentActivitiesDatabaseError:1628,
    PlatformErrorCodes.DestinyItemBucketNotFound:1629,
    PlatformErrorCodes.DestinyInvalidMembershipType:1630,
    PlatformErrorCodes.DestinyVersionIncompatibility:1631,
    PlatformErrorCodes.DestinyItemAlreadyInInventory:1632,
    PlatformErrorCodes.DestinyBucketNotFound:1633,
    PlatformErrorCodes.DestinyCharacterNotInTower:1634,
    PlatformErrorCodes.DestinyCharacterNotLoggedIn:1635,
    PlatformErrorCodes.DestinyDefinitionsNotLoaded:1636,
    PlatformErrorCodes.DestinyInventoryFull:1637,
    PlatformErrorCodes.DestinyItemFailedLevelCheck:1638,
    PlatformErrorCodes.DestinyItemFailedUnlockCheck:1639,
    PlatformErrorCodes.DestinyItemUnequippable:1640,
    PlatformErrorCodes.DestinyItemUniqueEquipRestricted:1641,
    PlatformErrorCodes.DestinyNoRoomInDestination:1642,
    PlatformErrorCodes.DestinyServiceFailure:1643,
    PlatformErrorCodes.DestinyServiceRetired:1644,
    PlatformErrorCodes.DestinyTransferFailed:1645,
    PlatformErrorCodes.DestinyTransferNotFoundForSourceBucket:1646,
    PlatformErrorCodes.DestinyUnexpectedResultInVendorTransferCheck:1647,
    PlatformErrorCodes.DestinyUniquenessViolation:1648,
    PlatformErrorCodes.DestinyErrorDeserializationFailure:1649,
    PlatformErrorCodes.DestinyValidAccountTicketRequired:1650,
    PlatformErrorCodes.DestinyShardRelayClientTimeout:1651,
    PlatformErrorCodes.DestinyShardRelayProxyTimeout:1652,
    PlatformErrorCodes.DestinyPGCRNotFound:1653,
    PlatformErrorCodes.DestinyAccountMustBeOffline:1654,
    PlatformErrorCodes.DestinyCanOnlyEquipInGame:1655,
    PlatformErrorCodes.DestinyCannotPerformActionOnEquippedItem:1656,
    PlatformErrorCodes.DestinyQuestAlreadyCompleted:1657,
    PlatformErrorCodes.DestinyQuestAlreadyTracked:1658,
    PlatformErrorCodes.DestinyTrackableQuestsFull:1659,
    PlatformErrorCodes.DestinyItemNotTransferrable:1660,
    PlatformErrorCodes.DestinyVendorPurchaseNotAllowed:1661,
    PlatformErrorCodes.DestinyContentVersionMismatch:1662,
    PlatformErrorCodes.DestinyItemActionForbidden:1663,
    PlatformErrorCodes.DestinyRefundInvalid:1664,
    PlatformErrorCodes.DestinyPrivacyRestriction:1665,
    PlatformErrorCodes.DestinyActionInsufficientPrivileges:1666,
    PlatformErrorCodes.DestinyInvalidClaimException:1667,
    PlatformErrorCodes.DestinyLegacyPlatformRestricted:1668,
    PlatformErrorCodes.DestinyLegacyPlatformInUse:1669,
    PlatformErrorCodes.DestinyLegacyPlatformInaccessible:1670,
    PlatformErrorCodes.DestinyCannotPerformActionAtThisLocation:1671,
    PlatformErrorCodes.DestinyThrottledByGameServer:1672,
    PlatformErrorCodes.DestinyItemNotTransferrableHasSideEffects:1673,
    PlatformErrorCodes.DestinyItemLocked:1674,
    PlatformErrorCodes.DestinyCannotAffordMaterialRequirements:1675,
    PlatformErrorCodes.DestinyFailedPlugInsertionRules:1676,
    PlatformErrorCodes.DestinySocketNotFound:1677,
    PlatformErrorCodes.DestinySocketActionNotAllowed:1678,
    PlatformErrorCodes.DestinySocketAlreadyHasPlug:1679,
    PlatformErrorCodes.DestinyPlugItemNotAvailable:1680,
    PlatformErrorCodes.DestinyCharacterLoggedInNotAllowed:1681,
    PlatformErrorCodes.DestinyPublicAccountNotAccessible:1682,
    PlatformErrorCodes.DestinyClaimsItemAlreadyClaimed:1683,
    PlatformErrorCodes.DestinyClaimsNoInventorySpace:1684,
    PlatformErrorCodes.DestinyClaimsRequiredLevelNotMet:1685,
    PlatformErrorCodes.DestinyClaimsInvalidState:1686,
    PlatformErrorCodes.DestinyNotEnoughRoomForMultipleRewards:1687,
    PlatformErrorCodes.DestinyDirectBabelClientTimeout:1688,
    PlatformErrorCodes.FbInvalidRequest:1800,
    PlatformErrorCodes.FbRedirectMismatch:1801,
    PlatformErrorCodes.FbAccessDenied:1802,
    PlatformErrorCodes.FbUnsupportedResponseType:1803,
    PlatformErrorCodes.FbInvalidScope:1804,
    PlatformErrorCodes.FbUnsupportedGrantType:1805,
    PlatformErrorCodes.FbInvalidGrant:1806,
    PlatformErrorCodes.InvitationExpired:1900,
    PlatformErrorCodes.InvitationUnknownType:1901,
    PlatformErrorCodes.InvitationInvalidResponseStatus:1902,
    PlatformErrorCodes.InvitationInvalidType:1903,
    PlatformErrorCodes.InvitationAlreadyPending:1904,
    PlatformErrorCodes.InvitationInsufficientPermission:1905,
    PlatformErrorCodes.InvitationInvalidCode:1906,
    PlatformErrorCodes.InvitationInvalidTargetState:1907,
    PlatformErrorCodes.InvitationCannotBeReactivated:1908,
    PlatformErrorCodes.InvitationNoRecipients:1910,
    PlatformErrorCodes.InvitationGroupCannotSendToSelf:1911,
    PlatformErrorCodes.InvitationTooManyRecipients:1912,
    PlatformErrorCodes.InvitationInvalid:1913,
    PlatformErrorCodes.InvitationNotFound:1914,
    PlatformErrorCodes.TokenInvalid:2000,
    PlatformErrorCodes.TokenBadFormat:2001,
    PlatformErrorCodes.TokenAlreadyClaimed:2002,
    PlatformErrorCodes.TokenAlreadyClaimedSelf:2003,
    PlatformErrorCodes.TokenThrottling:2004,
    PlatformErrorCodes.TokenUnknownRedemptionFailure:2005,
    PlatformErrorCodes.TokenPurchaseClaimFailedAfterTokenClaimed:2006,
    PlatformErrorCodes.TokenUserAlreadyOwnsOffer:2007,
    PlatformErrorCodes.TokenInvalidOfferKey:2008,
    PlatformErrorCodes.TokenEmailNotValidated:2009,
    PlatformErrorCodes.TokenProvisioningBadVendorOrOffer:2010,
    PlatformErrorCodes.TokenPurchaseHistoryUnknownError:2011,
    PlatformErrorCodes.TokenThrottleStateUnknownError:2012,
    PlatformErrorCodes.TokenUserAgeNotVerified:2013,
    PlatformErrorCodes.TokenExceededOfferMaximum:2014,
    PlatformErrorCodes.TokenNoAvailableUnlocks:2015,
    PlatformErrorCodes.TokenMarketplaceInvalidPlatform:2016,
    PlatformErrorCodes.TokenNoMarketplaceCodesFound:2017,
    PlatformErrorCodes.TokenOfferNotAvailableForRedemption:2018,
    PlatformErrorCodes.TokenUnlockPartialFailure:2019,
    PlatformErrorCodes.TokenMarketplaceInvalidRegion:2020,
    PlatformErrorCodes.TokenOfferExpired:2021,
    PlatformErrorCodes.RAFExceededMaximumReferrals:2022,
    PlatformErrorCodes.RAFDuplicateBond:2023,
    PlatformErrorCodes.RAFNoValidVeteranDestinyMembershipsFound:2024,
    PlatformErrorCodes.RAFNotAValidVeteranUser:2025,
    PlatformErrorCodes.RAFCodeAlreadyClaimedOrNotFound:2026,
    PlatformErrorCodes.RAFMismatchedDestinyMembershipType:2027,
    PlatformErrorCodes.RAFUnableToAccessPurchaseHistory:2028,
    PlatformErrorCodes.RAFUnableToCreateBond:2029,
    PlatformErrorCodes.RAFUnableToFindBond:2030,
    PlatformErrorCodes.RAFUnableToRemoveBond:2031,
    PlatformErrorCodes.RAFCannotBondToSelf:2032,
    PlatformErrorCodes.RAFInvalidPlatform:2033,
    PlatformErrorCodes.RAFGenerateThrottled:2034,
    PlatformErrorCodes.RAFUnableToCreateBondVersionMismatch:2035,
    PlatformErrorCodes.RAFUnableToRemoveBondVersionMismatch:2036,
    PlatformErrorCodes.RAFRedeemThrottled:2037,
    PlatformErrorCodes.NoAvailableDiscountCode:2038,
    PlatformErrorCodes.DiscountAlreadyClaimed:2039,
    PlatformErrorCodes.DiscountClaimFailure:2040,
    PlatformErrorCodes.DiscountConfigurationFailure:2041,
    PlatformErrorCodes.DiscountGenerationFailure:2042,
    PlatformErrorCodes.DiscountAlreadyExists:2043,
    PlatformErrorCodes.TokenRequiresCredentialXuid:2044,
    PlatformErrorCodes.TokenRequiresCredentialPsnid:2045,
    PlatformErrorCodes.OfferRequired:2046,
    PlatformErrorCodes.UnknownEververseHistoryError:2047,
    PlatformErrorCodes.MissingEververseHistoryError:2048,
    PlatformErrorCodes.BungieRewardEmailStateInvalid:2049,
    PlatformErrorCodes.BungieRewardNotYetClaimable:2050,
    PlatformErrorCodes.MissingOfferConfig:2051,
    PlatformErrorCodes.RAFQuestEntitlementRequiresBnet:2052,
    PlatformErrorCodes.RAFQuestEntitlementTransportFailure:2053,
    PlatformErrorCodes.RAFQuestEntitlementUnknownFailure:2054,
    PlatformErrorCodes.RAFVeteranRewardUnknownFailure:2055,
    PlatformErrorCodes.RAFTooEarlyToCancelBond:2056,
    PlatformErrorCodes.LoyaltyRewardAlreadyRedeemed:2057,
    PlatformErrorCodes.UnclaimedLoyaltyRewardEntryNotFound:2058,
    PlatformErrorCodes.PartnerOfferPartialFailure:2059,
    PlatformErrorCodes.PartnerOfferAlreadyClaimed:2060,
    PlatformErrorCodes.PartnerOfferSkuNotFound:2061,
    PlatformErrorCodes.PartnerOfferSkuExpired:2062,
    PlatformErrorCodes.PartnerOfferPermissionFailure:2063,
    PlatformErrorCodes.PartnerOfferNoDestinyAccount:2064,
    PlatformErrorCodes.PartnerOfferApplyDataNotFound:2065,
    PlatformErrorCodes.ApiExceededMaxKeys:2100,
    PlatformErrorCodes.ApiInvalidOrExpiredKey:2101,
    PlatformErrorCodes.ApiKeyMissingFromRequest:2102,
    PlatformErrorCodes.ApplicationDisabled:2103,
    PlatformErrorCodes.ApplicationExceededMax:2104,
    PlatformErrorCodes.ApplicationDisallowedByScope:2105,
    PlatformErrorCodes.AuthorizationCodeInvalid:2106,
    PlatformErrorCodes.OriginHeaderDoesNotMatchKey:2107,
    PlatformErrorCodes.AccessNotPermittedByApplicationScope:2108,
    PlatformErrorCodes.ApplicationNameIsTaken:2109,
    PlatformErrorCodes.RefreshTokenNotYetValid:2110,
    PlatformErrorCodes.AccessTokenHasExpired:2111,
    PlatformErrorCodes.ApplicationTokenFormatNotValid:2112,
    PlatformErrorCodes.ApplicationNotConfiguredForBungieAuth:2113,
    PlatformErrorCodes.ApplicationNotConfiguredForOAuth:2114,
    PlatformErrorCodes.OAuthAccessTokenExpired:2115,
    PlatformErrorCodes.ApplicationTokenKeyIdDoesNotExist:2116,
    PlatformErrorCodes.ProvidedTokenNotValidRefreshToken:2117,
    PlatformErrorCodes.RefreshTokenExpired:2118,
    PlatformErrorCodes.AuthorizationRecordInvalid:2119,
    PlatformErrorCodes.TokenPreviouslyRevoked:2120,
    PlatformErrorCodes.TokenInvalidMembership:2121,
    PlatformErrorCodes.AuthorizationCodeStale:2122,
    PlatformErrorCodes.AuthorizationRecordExpired:2123,
    PlatformErrorCodes.AuthorizationRecordRevoked:2124,
    PlatformErrorCodes.AuthorizationRecordInactiveApiKey:2125,
    PlatformErrorCodes.AuthorizationRecordApiKeyMatching:2126,
    PlatformErrorCodes.PartnershipInvalidType:2200,
    PlatformErrorCodes.PartnershipValidationError:2201,
    PlatformErrorCodes.PartnershipValidationTimeout:2202,
    PlatformErrorCodes.PartnershipAccessFailure:2203,
    PlatformErrorCodes.PartnershipAccountInvalid:2204,
    PlatformErrorCodes.PartnershipGetAccountInfoFailure:2205,
    PlatformErrorCodes.PartnershipDisabled:2206,
    PlatformErrorCodes.PartnershipAlreadyExists:2207,
    PlatformErrorCodes.CommunityStreamingUnavailable:2300,
    PlatformErrorCodes.TwitchNotLinked:2500,
    PlatformErrorCodes.TwitchAccountNotFound:2501,
    PlatformErrorCodes.TwitchCouldNotLoadDestinyInfo:2502,
    PlatformErrorCodes.TwitchCouldNotRegisterUser:2503,
    PlatformErrorCodes.TwitchCouldNotUnregisterUser:2504,
    PlatformErrorCodes.TwitchRequiresRelinking:2505,
    PlatformErrorCodes.TwitchNoPlatformChosen:2506,
    PlatformErrorCodes.TwitchDropHistoryPermissionFailure:2507,
    PlatformErrorCodes.TwitchDropsRepairPartialFailure:2508,
    PlatformErrorCodes.TwitchNotAuthorized:2509,
    PlatformErrorCodes.TwitchUnknownAuthorizationFailure:2510,
    PlatformErrorCodes.TrendingCategoryNotFound:2600,
    PlatformErrorCodes.TrendingEntryTypeNotSupported:2601,
    PlatformErrorCodes.ReportOffenderNotInPgcr:2700,
    PlatformErrorCodes.ReportRequestorNotInPgcr:2701,
    PlatformErrorCodes.ReportSubmissionFailed:2702,
    PlatformErrorCodes.ReportCannotReportSelf:2703,
    PlatformErrorCodes.AwaTypeDisabled:2800,
    PlatformErrorCodes.AwaTooManyPendingRequests:2801,
    PlatformErrorCodes.AwaTheFeatureRequiresARegisteredDevice:2802,
    PlatformErrorCodes.AwaRequestWasUnansweredForTooLong:2803,
    PlatformErrorCodes.AwaWriteRequestMissingOrInvalidToken:2804,
    PlatformErrorCodes.AwaWriteRequestTokenExpired:2805,
    PlatformErrorCodes.AwaWriteRequestTokenUsageLimitReached:2806,
    PlatformErrorCodes.SteamWebApiError:2900,
    PlatformErrorCodes.SteamWebNullResponseError:2901,
    PlatformErrorCodes.SteamAccountRequired:2902,
    PlatformErrorCodes.SteamNotAuthorized:2903,
    PlatformErrorCodes.ClanFireteamNotFound:3000,
    PlatformErrorCodes.ClanFireteamAddNoAlternatesForImmediate:3001,
    PlatformErrorCodes.ClanFireteamFull:3002,
    PlatformErrorCodes.ClanFireteamAltFull:3003,
    PlatformErrorCodes.ClanFireteamBlocked:3004,
    PlatformErrorCodes.ClanFireteamPlayerEntryNotFound:3005,
    PlatformErrorCodes.ClanFireteamPermissions:3006,
    PlatformErrorCodes.ClanFireteamInvalidPlatform:3007,
    PlatformErrorCodes.ClanFireteamCannotAdjustSlotCount:3008,
    PlatformErrorCodes.ClanFireteamInvalidPlayerPlatform:3009,
    PlatformErrorCodes.ClanFireteamNotReadyForInvitesNotEnoughPlayers:3010,
    PlatformErrorCodes.ClanFireteamGameInvitesNotSupportForPlatform:3011,
    PlatformErrorCodes.ClanFireteamPlatformInvitePreqFailure:3012,
    PlatformErrorCodes.ClanFireteamInvalidAuthContext:3013,
    PlatformErrorCodes.ClanFireteamInvalidAuthProviderPsn:3014,
    PlatformErrorCodes.ClanFireteamPs4SessionFull:3015,
    PlatformErrorCodes.ClanFireteamInvalidAuthToken:3016,
    PlatformErrorCodes.ClanFireteamScheduledFireteamsDisabled:3017,
    PlatformErrorCodes.ClanFireteamNotReadyForInvitesNotScheduledYet:3018,
    PlatformErrorCodes.ClanFireteamNotReadyForInvitesClosed:3019,
    PlatformErrorCodes.ClanFireteamScheduledFireteamsRequireAdminPermissions:3020,
    PlatformErrorCodes.ClanFireteamNonPublicMustHaveClan:3021,
    PlatformErrorCodes.ClanFireteamPublicCreationRestriction:3022,
    PlatformErrorCodes.ClanFireteamAlreadyJoined:3023,
    PlatformErrorCodes.ClanFireteamScheduledFireteamsRange:3024,
    PlatformErrorCodes.ClanFireteamPublicCreationRestrictionExtended:3025,
    PlatformErrorCodes.ClanFireteamExpired:3026,
    PlatformErrorCodes.ClanFireteamInvalidAuthProvider:3027,
    PlatformErrorCodes.ClanFireteamInvalidAuthProviderXuid:3028,
    PlatformErrorCodes.ClanFireteamThrottle:3029,
    PlatformErrorCodes.ClanFireteamTooManyOpenScheduledFireteams:3030,
    PlatformErrorCodes.ClanFireteamCannotReopenScheduledFireteams:3031,
    PlatformErrorCodes.ClanFireteamJoinNoAccountSpecified:3032,
    PlatformErrorCodes.ClanFireteamMinDestiny2ProgressForCreation:3033,
    PlatformErrorCodes.ClanFireteamMinDestiny2ProgressForJoin:3034,
    PlatformErrorCodes.ClanFireteamSMSOrPurchaseRequiredCreate:3035,
    PlatformErrorCodes.ClanFireteamPurchaseRequiredCreate:3036,
    PlatformErrorCodes.ClanFireteamSMSOrPurchaseRequiredJoin:3037,
    PlatformErrorCodes.ClanFireteamPurchaseRequiredJoin:3038,
    PlatformErrorCodes.CrossSaveOverriddenAccountNotFound:3200,
    PlatformErrorCodes.CrossSaveTooManyOverriddenPlatforms:3201,
    PlatformErrorCodes.CrossSaveNoOverriddenPlatforms:3202,
    PlatformErrorCodes.CrossSavePrimaryAccountNotFound:3203,
    PlatformErrorCodes.CrossSaveRequestInvalid:3204,
    PlatformErrorCodes.CrossSaveBungieAccountValidationFailure:3206,
    PlatformErrorCodes.CrossSaveOverriddenPlatformNotAllowed:3207,
    PlatformErrorCodes.CrossSaveThresholdExceeded:3208,
    PlatformErrorCodes.CrossSaveIncompatibleMembershipType:3209,
    PlatformErrorCodes.CrossSaveCouldNotFindLinkedAccountForMembershipType:3210,
    PlatformErrorCodes.CrossSaveCouldNotCreateDestinyProfileForMembershipType:3211,
    PlatformErrorCodes.CrossSaveErrorCreatingDestinyProfileForMembershipType:3212,
    PlatformErrorCodes.CrossSaveCannotOverrideSelf:3213,
    PlatformErrorCodes.CrossSaveRecentSilverPurchase:3214,
    PlatformErrorCodes.CrossSaveSilverBalanceNegative:3215,
    PlatformErrorCodes.CrossSaveAccountNotAuthenticated:3216,
    PlatformErrorCodes.ErrorOneAccountAlreadyActive:3217,
    PlatformErrorCodes.ErrorOneAccountDestinyRestriction:3218,
    PlatformErrorCodes.CrossSaveMustMigrateToSteam:3219,
    PlatformErrorCodes.CrossSaveSteamAlreadyPaired:3220,
    PlatformErrorCodes.CrossSaveCannotPairJustSteamAndBlizzard:3221,
    PlatformErrorCodes.CrossSaveCannotPairSteamAloneBeforeShadowkeep:3222,
    PlatformErrorCodes.AuthVerificationNotLinkedToAccount:3300,
    PlatformErrorCodes.PCMigrationMissingBlizzard:3400,
    PlatformErrorCodes.PCMigrationMissingSteam:3401,
    PlatformErrorCodes.PCMigrationInvalidBlizzard:3402,
    PlatformErrorCodes.PCMigrationInvalidSteam:3403,
    PlatformErrorCodes.PCMigrationUnknownFailure:3404,
    PlatformErrorCodes.PCMigrationUnknownException:3405,
    PlatformErrorCodes.PCMigrationNotLinked:3406,
    PlatformErrorCodes.PCMigrationAccountsAlreadyUsed:3407,
    PlatformErrorCodes.PCMigrationStepFailed:3408,
    PlatformErrorCodes.PCMigrationInvalidBlizzardCrossSaveState:3409,
    PlatformErrorCodes.PCMigrationDestinationBanned:3410,
    PlatformErrorCodes.PCMigrationDestinyFailure:3411,
    PlatformErrorCodes.PCMigrationSilverTransferFailed:3412,
    PlatformErrorCodes.PCMigrationEntitlementTransferFailed:3413,
    PlatformErrorCodes.PCMigrationCannotStompClanFounder:3414,
    PlatformErrorCodes.UnsupportedBrowser:3500,
    PlatformErrorCodes.StadiaAccountRequired:3600,
    PlatformErrorCodes.ErrorPhoneValidationTooManyUses:3702,
    PlatformErrorCodes.ErrorPhoneValidationNoAssociatedPhone:3703,
    PlatformErrorCodes.ErrorPhoneValidationCodeInvalid:3705,
    PlatformErrorCodes.ErrorPhoneValidationBanned:3706,
    PlatformErrorCodes.ErrorPhoneValidationCodeTooRecentlySent:3707,
    PlatformErrorCodes.ErrorPhoneValidationCodeExpired:3708,
    PlatformErrorCodes.ErrorPhoneValidationInvalidNumberType:3709,
    PlatformErrorCodes.ErrorPhoneValidationCodeTooRecentlyChecked:3710,
    PlatformErrorCodes.ApplePushErrorUnknown:3800,
    PlatformErrorCodes.ApplePushErrorNull:3801,
    PlatformErrorCodes.ApplePushErrorTimeout:3802,
    PlatformErrorCodes.ApplePushBadRequest:3803,
    PlatformErrorCodes.ApplePushFailedAuth:3804,
    PlatformErrorCodes.ApplePushThrottled:3805,
    PlatformErrorCodes.ApplePushServiceUnavailable:3806,
    PlatformErrorCodes.NotAnImageOrVideo:3807,
    PlatformErrorCodes.ErrorBungieFriendsBlockFailed:3900,
    PlatformErrorCodes.ErrorBungieFriendsAutoReject:3901,
    PlatformErrorCodes.ErrorBungieFriendsNoRequestFound:3902,
    PlatformErrorCodes.ErrorBungieFriendsAlreadyFriends:3903,
    PlatformErrorCodes.ErrorBungieFriendsUnableToRemoveRequest:3904,
    PlatformErrorCodes.ErrorBungieFriendsUnableToRemove:3905,
    PlatformErrorCodes.ErrorBungieFriendsIdenticalSourceTarget:3906,
    PlatformErrorCodes.ErrorBungieFriendsSelf:3907,
    PlatformErrorCodes.ErrorBungieBlockSelf:3908,
    PlatformErrorCodes.ErrorBungieFriendsListFull:3910,
    PlatformErrorCodes.ErrorBungieBlockListFull:3911,
    PlatformErrorCodes.ErrorEgsUnknown:4000,
    PlatformErrorCodes.ErrorEgsBadRequest:4001,
    PlatformErrorCodes.ErrorEgsNotAuthorized:4002,
    PlatformErrorCodes.ErrorEgsForbidden:4003,
    PlatformErrorCodes.ErrorEgsAccountNotFound:4004,
    PlatformErrorCodes.ErrorEgsWebException:4005,
    PlatformErrorCodes.ErrorEgsUnavailable:4006,
    PlatformErrorCodes.ErrorEgsJwksMissing:4007,
    PlatformErrorCodes.ErrorEgsJwtMalformedHeader:4008,
    PlatformErrorCodes.ErrorEgsJwtMalformedPayload:4009,
};
const Map<int, PlatformErrorCodes> _$PlatformErrorCodesValueMap = <int, PlatformErrorCodes>{
    0:PlatformErrorCodes.None,
    1:PlatformErrorCodes.Success,
    2:PlatformErrorCodes.TransportException,
    3:PlatformErrorCodes.UnhandledException,
    4:PlatformErrorCodes.NotImplemented,
    5:PlatformErrorCodes.SystemDisabled,
    6:PlatformErrorCodes.FailedToLoadAvailableLocalesConfiguration,
    7:PlatformErrorCodes.ParameterParseFailure,
    8:PlatformErrorCodes.ParameterInvalidRange,
    9:PlatformErrorCodes.BadRequest,
    10:PlatformErrorCodes.AuthenticationInvalid,
    11:PlatformErrorCodes.DataNotFound,
    12:PlatformErrorCodes.InsufficientPrivileges,
    13:PlatformErrorCodes.Duplicate,
    14:PlatformErrorCodes.UnknownSqlResult,
    15:PlatformErrorCodes.ValidationError,
    16:PlatformErrorCodes.ValidationMissingFieldError,
    17:PlatformErrorCodes.ValidationInvalidInputError,
    18:PlatformErrorCodes.InvalidParameters,
    19:PlatformErrorCodes.ParameterNotFound,
    20:PlatformErrorCodes.UnhandledHttpException,
    21:PlatformErrorCodes.NotFound,
    22:PlatformErrorCodes.WebAuthModuleAsyncFailed,
    23:PlatformErrorCodes.InvalidReturnValue,
    24:PlatformErrorCodes.UserBanned,
    25:PlatformErrorCodes.InvalidPostBody,
    26:PlatformErrorCodes.MissingPostBody,
    27:PlatformErrorCodes.ExternalServiceTimeout,
    28:PlatformErrorCodes.ValidationLengthError,
    29:PlatformErrorCodes.ValidationRangeError,
    30:PlatformErrorCodes.JsonDeserializationError,
    31:PlatformErrorCodes.ThrottleLimitExceeded,
    32:PlatformErrorCodes.ValidationTagError,
    33:PlatformErrorCodes.ValidationProfanityError,
    34:PlatformErrorCodes.ValidationUrlFormatError,
    35:PlatformErrorCodes.ThrottleLimitExceededMinutes,
    36:PlatformErrorCodes.ThrottleLimitExceededMomentarily,
    37:PlatformErrorCodes.ThrottleLimitExceededSeconds,
    38:PlatformErrorCodes.ExternalServiceUnknown,
    39:PlatformErrorCodes.ValidationWordLengthError,
    40:PlatformErrorCodes.ValidationInvisibleUnicode,
    41:PlatformErrorCodes.ValidationBadNames,
    42:PlatformErrorCodes.ExternalServiceFailed,
    43:PlatformErrorCodes.ServiceRetired,
    44:PlatformErrorCodes.UnknownSqlException,
    45:PlatformErrorCodes.UnsupportedLocale,
    46:PlatformErrorCodes.InvalidPageNumber,
    47:PlatformErrorCodes.MaximumPageSizeExceeded,
    48:PlatformErrorCodes.ServiceUnsupported,
    49:PlatformErrorCodes.ValidationMaximumUnicodeCombiningCharacters,
    50:PlatformErrorCodes.ValidationMaximumSequentialCarriageReturns,
    51:PlatformErrorCodes.PerEndpointRequestThrottleExceeded,
    52:PlatformErrorCodes.AuthContextCacheAssertion,
    53:PlatformErrorCodes.ExPlatformStringValidationError,
    54:PlatformErrorCodes.PerApplicationThrottleExceeded,
    55:PlatformErrorCodes.PerApplicationAnonymousThrottleExceeded,
    56:PlatformErrorCodes.PerApplicationAuthenticatedThrottleExceeded,
    57:PlatformErrorCodes.PerUserThrottleExceeded,
    58:PlatformErrorCodes.PayloadSignatureVerificationFailure,
    59:PlatformErrorCodes.InvalidServiceAuthContext,
    89:PlatformErrorCodes.ObsoleteCredentialType,
    90:PlatformErrorCodes.UnableToUnPairMobileApp,
    91:PlatformErrorCodes.UnableToPairMobileApp,
    92:PlatformErrorCodes.CannotUseMobileAuthWithNonMobileProvider,
    93:PlatformErrorCodes.MissingDeviceCookie,
    94:PlatformErrorCodes.FacebookTokenExpired,
    95:PlatformErrorCodes.AuthTicketRequired,
    96:PlatformErrorCodes.CookieContextRequired,
    97:PlatformErrorCodes.UnknownAuthenticationError,
    98:PlatformErrorCodes.BungieNetAccountCreationRequired,
    99:PlatformErrorCodes.WebAuthRequired,
    100:PlatformErrorCodes.ContentUnknownSqlResult,
    101:PlatformErrorCodes.ContentNeedUniquePath,
    102:PlatformErrorCodes.ContentSqlException,
    103:PlatformErrorCodes.ContentNotFound,
    104:PlatformErrorCodes.ContentSuccessWithTagAddFail,
    105:PlatformErrorCodes.ContentSearchMissingParameters,
    106:PlatformErrorCodes.ContentInvalidId,
    107:PlatformErrorCodes.ContentPhysicalFileDeletionError,
    108:PlatformErrorCodes.ContentPhysicalFileCreationError,
    109:PlatformErrorCodes.ContentPerforceSubmissionError,
    110:PlatformErrorCodes.ContentPerforceInitializationError,
    111:PlatformErrorCodes.ContentDeploymentPackageNotReadyError,
    112:PlatformErrorCodes.ContentUploadFailed,
    113:PlatformErrorCodes.ContentTooManyResults,
    115:PlatformErrorCodes.ContentInvalidState,
    116:PlatformErrorCodes.ContentNavigationParentNotFound,
    117:PlatformErrorCodes.ContentNavigationParentUpdateError,
    118:PlatformErrorCodes.DeploymentPackageNotEditable,
    119:PlatformErrorCodes.ContentValidationError,
    120:PlatformErrorCodes.ContentPropertiesValidationError,
    121:PlatformErrorCodes.ContentTypeNotFound,
    122:PlatformErrorCodes.DeploymentPackageNotFound,
    123:PlatformErrorCodes.ContentSearchInvalidParameters,
    124:PlatformErrorCodes.ContentItemPropertyAggregationError,
    125:PlatformErrorCodes.DeploymentPackageFileNotFound,
    126:PlatformErrorCodes.ContentPerforceFileHistoryNotFound,
    127:PlatformErrorCodes.ContentAssetZipCreationFailure,
    128:PlatformErrorCodes.ContentAssetZipCreationBusy,
    129:PlatformErrorCodes.ContentProjectNotFound,
    130:PlatformErrorCodes.ContentFolderNotFound,
    131:PlatformErrorCodes.ContentPackagesInconsistent,
    132:PlatformErrorCodes.ContentPackagesInvalidState,
    133:PlatformErrorCodes.ContentPackagesInconsistentType,
    134:PlatformErrorCodes.ContentCannotDeletePackage,
    135:PlatformErrorCodes.ContentLockedForChanges,
    136:PlatformErrorCodes.ContentFileUploadFailed,
    137:PlatformErrorCodes.ContentNotReviewed,
    138:PlatformErrorCodes.ContentPermissionDenied,
    139:PlatformErrorCodes.ContentInvalidExternalUrl,
    140:PlatformErrorCodes.ContentExternalFileCannotBeImportedLocally,
    141:PlatformErrorCodes.ContentTagSaveFailure,
    142:PlatformErrorCodes.ContentPerforceUnmatchedFileError,
    143:PlatformErrorCodes.ContentPerforceChangelistResultNotFound,
    144:PlatformErrorCodes.ContentPerforceChangelistFileItemsNotFound,
    145:PlatformErrorCodes.ContentPerforceInvalidRevisionError,
    146:PlatformErrorCodes.ContentUnloadedSaveResult,
    147:PlatformErrorCodes.ContentPropertyInvalidNumber,
    148:PlatformErrorCodes.ContentPropertyInvalidUrl,
    149:PlatformErrorCodes.ContentPropertyInvalidDate,
    150:PlatformErrorCodes.ContentPropertyInvalidSet,
    151:PlatformErrorCodes.ContentPropertyCannotDeserialize,
    152:PlatformErrorCodes.ContentRegexValidationFailOnProperty,
    153:PlatformErrorCodes.ContentMaxLengthFailOnProperty,
    154:PlatformErrorCodes.ContentPropertyUnexpectedDeserializationError,
    155:PlatformErrorCodes.ContentPropertyRequired,
    156:PlatformErrorCodes.ContentCannotCreateFile,
    157:PlatformErrorCodes.ContentInvalidMigrationFile,
    158:PlatformErrorCodes.ContentMigrationAlteringProcessedItem,
    159:PlatformErrorCodes.ContentPropertyDefinitionNotFound,
    160:PlatformErrorCodes.ContentReviewDataChanged,
    161:PlatformErrorCodes.ContentRollbackRevisionNotInPackage,
    162:PlatformErrorCodes.ContentItemNotBasedOnLatestRevision,
    163:PlatformErrorCodes.ContentUnauthorized,
    164:PlatformErrorCodes.ContentCannotCreateDeploymentPackage,
    165:PlatformErrorCodes.ContentUserNotFound,
    166:PlatformErrorCodes.ContentLocalePermissionDenied,
    167:PlatformErrorCodes.ContentInvalidLinkToInternalEnvironment,
    168:PlatformErrorCodes.ContentInvalidBlacklistedContent,
    169:PlatformErrorCodes.ContentMacroMalformedNoContentId,
    170:PlatformErrorCodes.ContentMacroMalformedNoTemplateType,
    171:PlatformErrorCodes.ContentIllegalBNetMembershipId,
    172:PlatformErrorCodes.ContentLocaleDidNotMatchExpected,
    173:PlatformErrorCodes.ContentBabelCallFailed,
    174:PlatformErrorCodes.ContentEnglishPostLiveForbidden,
    175:PlatformErrorCodes.ContentLocaleEditPermissionDenied,
    176:PlatformErrorCodes.ContentStackUnknownError,
    177:PlatformErrorCodes.ContentStackNotFound,
    178:PlatformErrorCodes.ContentStackRateLimited,
    179:PlatformErrorCodes.ContentStackTimeout,
    180:PlatformErrorCodes.ContentStackServiceError,
    181:PlatformErrorCodes.ContentStackDeserializationFailure,
    200:PlatformErrorCodes.UserNonUniqueName,
    201:PlatformErrorCodes.UserManualLinkingStepRequired,
    202:PlatformErrorCodes.UserCreateUnknownSqlResult,
    203:PlatformErrorCodes.UserCreateUnknownSqlException,
    204:PlatformErrorCodes.UserMalformedMembershipId,
    205:PlatformErrorCodes.UserCannotFindRequestedUser,
    206:PlatformErrorCodes.UserCannotLoadAccountCredentialLinkInfo,
    207:PlatformErrorCodes.UserInvalidMobileAppType,
    208:PlatformErrorCodes.UserMissingMobilePairingInfo,
    209:PlatformErrorCodes.UserCannotGenerateMobileKeyWhileUsingMobileCredential,
    210:PlatformErrorCodes.UserGenerateMobileKeyExistingSlotCollision,
    211:PlatformErrorCodes.UserDisplayNameMissingOrInvalid,
    212:PlatformErrorCodes.UserCannotLoadAccountProfileData,
    213:PlatformErrorCodes.UserCannotSaveUserProfileData,
    214:PlatformErrorCodes.UserEmailMissingOrInvalid,
    215:PlatformErrorCodes.UserTermsOfUseRequired,
    216:PlatformErrorCodes.UserCannotCreateNewAccountWhileLoggedIn,
    217:PlatformErrorCodes.UserCannotResolveCentralAccount,
    218:PlatformErrorCodes.UserInvalidAvatar,
    219:PlatformErrorCodes.UserMissingCreatedUserResult,
    220:PlatformErrorCodes.UserCannotChangeUniqueNameYet,
    221:PlatformErrorCodes.UserCannotChangeDisplayNameYet,
    222:PlatformErrorCodes.UserCannotChangeEmail,
    223:PlatformErrorCodes.UserUniqueNameMustStartWithLetter,
    224:PlatformErrorCodes.UserNoLinkedAccountsSupportFriendListings,
    225:PlatformErrorCodes.UserAcknowledgmentTableFull,
    226:PlatformErrorCodes.UserCreationDestinyMembershipRequired,
    227:PlatformErrorCodes.UserFriendsTokenNeedsRefresh,
    228:PlatformErrorCodes.UserEmailValidationUnknown,
    229:PlatformErrorCodes.UserEmailValidationLimit,
    230:PlatformErrorCodes.TransactionEmailSendFailure,
    231:PlatformErrorCodes.MailHookPermissionFailure,
    232:PlatformErrorCodes.MailServiceRateLimit,
    233:PlatformErrorCodes.UserEmailMustBeVerified,
    234:PlatformErrorCodes.UserMustAllowCustomerServiceEmails,
    235:PlatformErrorCodes.NonTransactionalEmailSendFailure,
    236:PlatformErrorCodes.UnknownErrorSettingGlobalDisplayName,
    237:PlatformErrorCodes.DuplicateGlobalDisplayName,
    238:PlatformErrorCodes.ErrorRunningNameValidationChecks,
    239:PlatformErrorCodes.ErrorDatabaseGlobalName,
    240:PlatformErrorCodes.ErrorNoAvailableNameChanges,
    241:PlatformErrorCodes.ErrorNameAlreadySetToInput,
    242:PlatformErrorCodes.UserDisplayNameLessThanMinLength,
    243:PlatformErrorCodes.UserDisplayNameGreaterThanMaxLength,
    244:PlatformErrorCodes.UserDisplayNameContainsUnacceptableOrInvalidContent,
    300:PlatformErrorCodes.MessagingUnknownError,
    301:PlatformErrorCodes.MessagingSelfError,
    302:PlatformErrorCodes.MessagingSendThrottle,
    303:PlatformErrorCodes.MessagingNoBody,
    304:PlatformErrorCodes.MessagingTooManyUsers,
    305:PlatformErrorCodes.MessagingCanNotLeaveConversation,
    306:PlatformErrorCodes.MessagingUnableToSend,
    307:PlatformErrorCodes.MessagingDeletedUserForbidden,
    308:PlatformErrorCodes.MessagingCannotDeleteExternalConversation,
    309:PlatformErrorCodes.MessagingGroupChatDisabled,
    310:PlatformErrorCodes.MessagingMustIncludeSelfInPrivateMessage,
    311:PlatformErrorCodes.MessagingSenderIsBanned,
    312:PlatformErrorCodes.MessagingGroupOptionalChatExceededMaximum,
    313:PlatformErrorCodes.PrivateMessagingRequiresDestinyMembership,
    400:PlatformErrorCodes.AddSurveyAnswersUnknownSqlException,
    500:PlatformErrorCodes.ForumBodyCannotBeEmpty,
    501:PlatformErrorCodes.ForumSubjectCannotBeEmptyOnTopicPost,
    502:PlatformErrorCodes.ForumCannotLocateParentPost,
    503:PlatformErrorCodes.ForumThreadLockedForReplies,
    504:PlatformErrorCodes.ForumUnknownSqlResultDuringCreatePost,
    505:PlatformErrorCodes.ForumUnknownTagCreationError,
    506:PlatformErrorCodes.ForumUnknownSqlResultDuringTagItem,
    507:PlatformErrorCodes.ForumUnknownExceptionCreatePost,
    508:PlatformErrorCodes.ForumQuestionMustBeTopicPost,
    509:PlatformErrorCodes.ForumExceptionDuringTagSearch,
    510:PlatformErrorCodes.ForumExceptionDuringTopicRetrieval,
    511:PlatformErrorCodes.ForumAliasedTagError,
    512:PlatformErrorCodes.ForumCannotLocateThread,
    513:PlatformErrorCodes.ForumUnknownExceptionEditPost,
    514:PlatformErrorCodes.ForumCannotLocatePost,
    515:PlatformErrorCodes.ForumUnknownExceptionGetOrCreateTags,
    516:PlatformErrorCodes.ForumEditPermissionDenied,
    517:PlatformErrorCodes.ForumUnknownSqlResultDuringTagIdRetrieval,
    518:PlatformErrorCodes.ForumCannotGetRating,
    519:PlatformErrorCodes.ForumUnknownExceptionGetRating,
    520:PlatformErrorCodes.ForumRatingsAccessError,
    521:PlatformErrorCodes.ForumRelatedPostAccessError,
    522:PlatformErrorCodes.ForumLatestReplyAccessError,
    523:PlatformErrorCodes.ForumUserStatusAccessError,
    524:PlatformErrorCodes.ForumAuthorAccessError,
    525:PlatformErrorCodes.ForumGroupAccessError,
    526:PlatformErrorCodes.ForumUrlExpectedButMissing,
    527:PlatformErrorCodes.ForumRepliesCannotBeEmpty,
    528:PlatformErrorCodes.ForumRepliesCannotBeInDifferentGroups,
    529:PlatformErrorCodes.ForumSubTopicCannotBeCreatedAtThisThreadLevel,
    530:PlatformErrorCodes.ForumCannotCreateContentTopic,
    531:PlatformErrorCodes.ForumTopicDoesNotExist,
    532:PlatformErrorCodes.ForumContentCommentsNotAllowed,
    533:PlatformErrorCodes.ForumUnknownSqlResultDuringEditPost,
    534:PlatformErrorCodes.ForumUnknownSqlResultDuringGetPost,
    535:PlatformErrorCodes.ForumPostValidationBadUrl,
    536:PlatformErrorCodes.ForumBodyTooLong,
    537:PlatformErrorCodes.ForumSubjectTooLong,
    538:PlatformErrorCodes.ForumAnnouncementNotAllowed,
    539:PlatformErrorCodes.ForumCannotShareOwnPost,
    540:PlatformErrorCodes.ForumEditNoOp,
    541:PlatformErrorCodes.ForumUnknownDatabaseErrorDuringGetPost,
    542:PlatformErrorCodes.ForumExceeedMaximumRowLimit,
    543:PlatformErrorCodes.ForumCannotSharePrivatePost,
    544:PlatformErrorCodes.ForumCannotCrossPostBetweenGroups,
    555:PlatformErrorCodes.ForumIncompatibleCategories,
    556:PlatformErrorCodes.ForumCannotUseTheseCategoriesOnNonTopicPost,
    557:PlatformErrorCodes.ForumCanOnlyDeleteTopics,
    558:PlatformErrorCodes.ForumDeleteSqlException,
    559:PlatformErrorCodes.ForumDeleteSqlUnknownResult,
    560:PlatformErrorCodes.ForumTooManyTags,
    561:PlatformErrorCodes.ForumCanOnlyRateTopics,
    562:PlatformErrorCodes.ForumBannedPostsCannotBeEdited,
    563:PlatformErrorCodes.ForumThreadRootIsBanned,
    564:PlatformErrorCodes.ForumCannotUseOfficialTagCategoryAsTag,
    565:PlatformErrorCodes.ForumAnswerCannotBeMadeOnCreatePost,
    566:PlatformErrorCodes.ForumAnswerCannotBeMadeOnEditPost,
    567:PlatformErrorCodes.ForumAnswerPostIdIsNotADirectReplyOfQuestion,
    568:PlatformErrorCodes.ForumAnswerTopicIdIsNotAQuestion,
    569:PlatformErrorCodes.ForumUnknownExceptionDuringMarkAnswer,
    570:PlatformErrorCodes.ForumUnknownSqlResultDuringMarkAnswer,
    571:PlatformErrorCodes.ForumCannotRateYourOwnPosts,
    572:PlatformErrorCodes.ForumPollsMustBeTheFirstPostInTopic,
    573:PlatformErrorCodes.ForumInvalidPollInput,
    574:PlatformErrorCodes.ForumGroupAdminEditNonMember,
    575:PlatformErrorCodes.ForumCannotEditModeratorEditedPost,
    576:PlatformErrorCodes.ForumRequiresDestinyMembership,
    577:PlatformErrorCodes.ForumUnexpectedError,
    578:PlatformErrorCodes.ForumAgeLock,
    579:PlatformErrorCodes.ForumMaxPages,
    580:PlatformErrorCodes.ForumMaxPagesOldestFirst,
    581:PlatformErrorCodes.ForumCannotApplyForumIdWithoutTags,
    582:PlatformErrorCodes.ForumCannotApplyForumIdToNonTopics,
    583:PlatformErrorCodes.ForumCannotDownvoteCommunityCreations,
    584:PlatformErrorCodes.ForumTopicsMustHaveOfficialCategory,
    585:PlatformErrorCodes.ForumRecruitmentTopicMalformed,
    586:PlatformErrorCodes.ForumRecruitmentTopicNotFound,
    587:PlatformErrorCodes.ForumRecruitmentTopicNoSlotsRemaining,
    588:PlatformErrorCodes.ForumRecruitmentTopicKickBan,
    589:PlatformErrorCodes.ForumRecruitmentTopicRequirementsNotMet,
    590:PlatformErrorCodes.ForumRecruitmentTopicNoPlayers,
    591:PlatformErrorCodes.ForumRecruitmentApproveFailMessageBan,
    592:PlatformErrorCodes.ForumRecruitmentGlobalBan,
    593:PlatformErrorCodes.ForumUserBannedFromThisTopic,
    594:PlatformErrorCodes.ForumRecruitmentFireteamMembersOnly,
    595:PlatformErrorCodes.ForumRequiresDestiny2Progress,
    596:PlatformErrorCodes.ForumRequiresDestiny2EntitlementPurchase,
    601:PlatformErrorCodes.GroupMembershipApplicationAlreadyResolved,
    602:PlatformErrorCodes.GroupMembershipAlreadyApplied,
    603:PlatformErrorCodes.GroupMembershipInsufficientPrivileges,
    604:PlatformErrorCodes.GroupIdNotReturnedFromCreation,
    605:PlatformErrorCodes.GroupSearchInvalidParameters,
    606:PlatformErrorCodes.GroupMembershipPendingApplicationNotFound,
    607:PlatformErrorCodes.GroupInvalidId,
    608:PlatformErrorCodes.GroupInvalidMembershipId,
    609:PlatformErrorCodes.GroupInvalidMembershipType,
    610:PlatformErrorCodes.GroupMissingTags,
    611:PlatformErrorCodes.GroupMembershipNotFound,
    612:PlatformErrorCodes.GroupInvalidRating,
    613:PlatformErrorCodes.GroupUserFollowingAccessError,
    614:PlatformErrorCodes.GroupUserMembershipAccessError,
    615:PlatformErrorCodes.GroupCreatorAccessError,
    616:PlatformErrorCodes.GroupAdminAccessError,
    617:PlatformErrorCodes.GroupPrivatePostNotViewable,
    618:PlatformErrorCodes.GroupMembershipNotLoggedIn,
    619:PlatformErrorCodes.GroupNotDeleted,
    620:PlatformErrorCodes.GroupUnknownErrorUndeletingGroup,
    621:PlatformErrorCodes.GroupDeleted,
    622:PlatformErrorCodes.GroupNotFound,
    623:PlatformErrorCodes.GroupMemberBanned,
    624:PlatformErrorCodes.GroupMembershipClosed,
    625:PlatformErrorCodes.GroupPrivatePostOverrideError,
    626:PlatformErrorCodes.GroupNameTaken,
    627:PlatformErrorCodes.GroupDeletionGracePeriodExpired,
    628:PlatformErrorCodes.GroupCannotCheckBanStatus,
    629:PlatformErrorCodes.GroupMaximumMembershipCountReached,
    630:PlatformErrorCodes.NoDestinyAccountForClanPlatform,
    631:PlatformErrorCodes.AlreadyRequestingMembershipForClanPlatform,
    632:PlatformErrorCodes.AlreadyClanMemberOnPlatform,
    633:PlatformErrorCodes.GroupJoinedCannotSetClanName,
    634:PlatformErrorCodes.GroupLeftCannotClearClanName,
    635:PlatformErrorCodes.GroupRelationshipRequestPending,
    636:PlatformErrorCodes.GroupRelationshipRequestBlocked,
    637:PlatformErrorCodes.GroupRelationshipRequestNotFound,
    638:PlatformErrorCodes.GroupRelationshipBlockNotFound,
    639:PlatformErrorCodes.GroupRelationshipNotFound,
    641:PlatformErrorCodes.GroupAlreadyAllied,
    642:PlatformErrorCodes.GroupAlreadyMember,
    643:PlatformErrorCodes.GroupRelationshipAlreadyExists,
    644:PlatformErrorCodes.InvalidGroupTypesForRelationshipRequest,
    646:PlatformErrorCodes.GroupAtMaximumAlliances,
    647:PlatformErrorCodes.GroupCannotSetClanOnlySettings,
    648:PlatformErrorCodes.ClanCannotSetTwoDefaultPostTypes,
    649:PlatformErrorCodes.GroupMemberInvalidMemberType,
    650:PlatformErrorCodes.GroupInvalidPlatformType,
    651:PlatformErrorCodes.GroupMemberInvalidSort,
    652:PlatformErrorCodes.GroupInvalidResolveState,
    653:PlatformErrorCodes.ClanAlreadyEnabledForPlatform,
    654:PlatformErrorCodes.ClanNotEnabledForPlatform,
    655:PlatformErrorCodes.ClanEnabledButCouldNotJoinNoAccount,
    656:PlatformErrorCodes.ClanEnabledButCouldNotJoinAlreadyMember,
    657:PlatformErrorCodes.ClanCannotJoinNoCredential,
    658:PlatformErrorCodes.NoClanMembershipForPlatform,
    659:PlatformErrorCodes.GroupToGroupFollowLimitReached,
    660:PlatformErrorCodes.ChildGroupAlreadyInAlliance,
    661:PlatformErrorCodes.OwnerGroupAlreadyInAlliance,
    662:PlatformErrorCodes.AllianceOwnerCannotJoinAlliance,
    663:PlatformErrorCodes.GroupNotInAlliance,
    664:PlatformErrorCodes.ChildGroupCannotInviteToAlliance,
    665:PlatformErrorCodes.GroupToGroupAlreadyFollowed,
    666:PlatformErrorCodes.GroupToGroupNotFollowing,
    667:PlatformErrorCodes.ClanMaximumMembershipReached,
    668:PlatformErrorCodes.ClanNameNotValid,
    669:PlatformErrorCodes.ClanNameNotValidError,
    670:PlatformErrorCodes.AllianceOwnerNotDefined,
    671:PlatformErrorCodes.AllianceChildNotDefined,
    672:PlatformErrorCodes.ClanCultureIllegalCharacters,
    673:PlatformErrorCodes.ClanTagIllegalCharacters,
    674:PlatformErrorCodes.ClanRequiresInvitation,
    675:PlatformErrorCodes.ClanMembershipClosed,
    676:PlatformErrorCodes.ClanInviteAlreadyMember,
    677:PlatformErrorCodes.GroupInviteAlreadyMember,
    678:PlatformErrorCodes.GroupJoinApprovalRequired,
    679:PlatformErrorCodes.ClanTagRequired,
    680:PlatformErrorCodes.GroupNameCannotStartOrEndWithWhiteSpace,
    681:PlatformErrorCodes.ClanCallsignCannotStartOrEndWithWhiteSpace,
    682:PlatformErrorCodes.ClanMigrationFailed,
    683:PlatformErrorCodes.ClanNotEnabledAlreadyMemberOfAnotherClan,
    684:PlatformErrorCodes.GroupModerationNotPermittedOnNonMembers,
    685:PlatformErrorCodes.ClanCreationInWorldServerFailed,
    686:PlatformErrorCodes.ClanNotFound,
    687:PlatformErrorCodes.ClanMembershipLevelDoesNotPermitThatAction,
    688:PlatformErrorCodes.ClanMemberNotFound,
    689:PlatformErrorCodes.ClanMissingMembershipApprovers,
    690:PlatformErrorCodes.ClanInWrongStateForRequestedAction,
    691:PlatformErrorCodes.ClanNameAlreadyUsed,
    692:PlatformErrorCodes.ClanTooFewMembers,
    693:PlatformErrorCodes.ClanInfoCannotBeWhitespace,
    694:PlatformErrorCodes.GroupCultureThrottle,
    695:PlatformErrorCodes.ClanTargetDisallowsInvites,
    696:PlatformErrorCodes.ClanInvalidOperation,
    697:PlatformErrorCodes.ClanFounderCannotLeaveWithoutAbdication,
    698:PlatformErrorCodes.ClanNameReserved,
    699:PlatformErrorCodes.ClanApplicantInClanSoNowInvited,
    701:PlatformErrorCodes.ActivitiesUnknownException,
    702:PlatformErrorCodes.ActivitiesParameterNull,
    703:PlatformErrorCodes.ActivityCountsDiabled,
    704:PlatformErrorCodes.ActivitySearchInvalidParameters,
    705:PlatformErrorCodes.ActivityPermissionDenied,
    706:PlatformErrorCodes.ShareAlreadyShared,
    707:PlatformErrorCodes.ActivityLoggingDisabled,
    750:PlatformErrorCodes.ClanRequiresExistingDestinyAccount,
    751:PlatformErrorCodes.ClanNameRestricted,
    752:PlatformErrorCodes.ClanCreationBan,
    753:PlatformErrorCodes.ClanCreationTenureRequirementsNotMet,
    754:PlatformErrorCodes.ClanFieldContainsReservedTerms,
    755:PlatformErrorCodes.ClanFieldContainsInappropriateContent,
    801:PlatformErrorCodes.ItemAlreadyFollowed,
    802:PlatformErrorCodes.ItemNotFollowed,
    803:PlatformErrorCodes.CannotFollowSelf,
    804:PlatformErrorCodes.GroupFollowLimitExceeded,
    805:PlatformErrorCodes.TagFollowLimitExceeded,
    806:PlatformErrorCodes.UserFollowLimitExceeded,
    807:PlatformErrorCodes.FollowUnsupportedEntityType,
    900:PlatformErrorCodes.NoValidTagsInList,
    901:PlatformErrorCodes.BelowMinimumSuggestionLength,
    902:PlatformErrorCodes.CannotGetSuggestionsOnMultipleTagsSimultaneously,
    903:PlatformErrorCodes.NotAValidPartialTag,
    904:PlatformErrorCodes.TagSuggestionsUnknownSqlResult,
    905:PlatformErrorCodes.TagsUnableToLoadPopularTagsFromDatabase,
    906:PlatformErrorCodes.TagInvalid,
    907:PlatformErrorCodes.TagNotFound,
    908:PlatformErrorCodes.SingleTagExpected,
    909:PlatformErrorCodes.TagsExceededMaximumPerItem,
    1000:PlatformErrorCodes.IgnoreInvalidParameters,
    1001:PlatformErrorCodes.IgnoreSqlException,
    1002:PlatformErrorCodes.IgnoreErrorRetrievingGroupPermissions,
    1003:PlatformErrorCodes.IgnoreErrorInsufficientPermission,
    1004:PlatformErrorCodes.IgnoreErrorRetrievingItem,
    1005:PlatformErrorCodes.IgnoreCannotIgnoreSelf,
    1006:PlatformErrorCodes.IgnoreIllegalType,
    1007:PlatformErrorCodes.IgnoreNotFound,
    1008:PlatformErrorCodes.IgnoreUserGloballyIgnored,
    1009:PlatformErrorCodes.IgnoreUserIgnored,
    1010:PlatformErrorCodes.TargetUserIgnored,
    1100:PlatformErrorCodes.NotificationSettingInvalid,
    1204:PlatformErrorCodes.PsnApiExpiredAccessToken,
    1205:PlatformErrorCodes.PSNExForbidden,
    1218:PlatformErrorCodes.PSNExSystemDisabled,
    1223:PlatformErrorCodes.PsnApiErrorCodeUnknown,
    1224:PlatformErrorCodes.PsnApiErrorWebException,
    1225:PlatformErrorCodes.PsnApiBadRequest,
    1226:PlatformErrorCodes.PsnApiAccessTokenRequired,
    1227:PlatformErrorCodes.PsnApiInvalidAccessToken,
    1229:PlatformErrorCodes.PsnApiBannedUser,
    1230:PlatformErrorCodes.PsnApiAccountUpgradeRequired,
    1231:PlatformErrorCodes.PsnApiServiceTemporarilyUnavailable,
    1232:PlatformErrorCodes.PsnApiServerBusy,
    1233:PlatformErrorCodes.PsnApiUnderMaintenance,
    1234:PlatformErrorCodes.PsnApiProfileUserNotFound,
    1235:PlatformErrorCodes.PsnApiProfilePrivacyRestriction,
    1236:PlatformErrorCodes.PsnApiProfileUnderMaintenance,
    1237:PlatformErrorCodes.PsnApiAccountAttributeMissing,
    1238:PlatformErrorCodes.PsnApiNoPermission,
    1239:PlatformErrorCodes.PsnApiTargetUserBlocked,
    1240:PlatformErrorCodes.PsnApiJwksMissing,
    1241:PlatformErrorCodes.PsnApiJwtMalformedHeader,
    1242:PlatformErrorCodes.PsnApiJwtMalformedPayload,
    1300:PlatformErrorCodes.XblExSystemDisabled,
    1301:PlatformErrorCodes.XblExUnknownError,
    1302:PlatformErrorCodes.XblApiErrorWebException,
    1303:PlatformErrorCodes.XblStsTokenInvalid,
    1304:PlatformErrorCodes.XblStsMissingToken,
    1305:PlatformErrorCodes.XblStsExpiredToken,
    1306:PlatformErrorCodes.XblAccessToTheSandboxDenied,
    1307:PlatformErrorCodes.XblMsaResponseMissing,
    1308:PlatformErrorCodes.XblMsaAccessTokenExpired,
    1309:PlatformErrorCodes.XblMsaInvalidRequest,
    1310:PlatformErrorCodes.XblMsaFriendsRequireSignIn,
    1311:PlatformErrorCodes.XblUserActionRequired,
    1312:PlatformErrorCodes.XblParentalControls,
    1313:PlatformErrorCodes.XblDeveloperAccount,
    1314:PlatformErrorCodes.XblUserTokenExpired,
    1315:PlatformErrorCodes.XblUserTokenInvalid,
    1316:PlatformErrorCodes.XblOffline,
    1317:PlatformErrorCodes.XblUnknownErrorCode,
    1318:PlatformErrorCodes.XblMsaInvalidGrant,
    1400:PlatformErrorCodes.ReportNotYetResolved,
    1401:PlatformErrorCodes.ReportOverturnDoesNotChangeDecision,
    1402:PlatformErrorCodes.ReportNotFound,
    1403:PlatformErrorCodes.ReportAlreadyReported,
    1404:PlatformErrorCodes.ReportInvalidResolution,
    1405:PlatformErrorCodes.ReportNotAssignedToYou,
    1500:PlatformErrorCodes.LegacyGameStatsSystemDisabled,
    1501:PlatformErrorCodes.LegacyGameStatsUnknownError,
    1502:PlatformErrorCodes.LegacyGameStatsMalformedSneakerNetCode,
    1600:PlatformErrorCodes.DestinyAccountAcquisitionFailure,
    1601:PlatformErrorCodes.DestinyAccountNotFound,
    1602:PlatformErrorCodes.DestinyBuildStatsDatabaseError,
    1603:PlatformErrorCodes.DestinyCharacterStatsDatabaseError,
    1604:PlatformErrorCodes.DestinyPvPStatsDatabaseError,
    1605:PlatformErrorCodes.DestinyPvEStatsDatabaseError,
    1606:PlatformErrorCodes.DestinyGrimoireStatsDatabaseError,
    1607:PlatformErrorCodes.DestinyStatsParameterMembershipTypeParseError,
    1608:PlatformErrorCodes.DestinyStatsParameterMembershipIdParseError,
    1609:PlatformErrorCodes.DestinyStatsParameterRangeParseError,
    1610:PlatformErrorCodes.DestinyStringItemHashNotFound,
    1611:PlatformErrorCodes.DestinyStringSetNotFound,
    1612:PlatformErrorCodes.DestinyContentLookupNotFoundForKey,
    1613:PlatformErrorCodes.DestinyContentItemNotFound,
    1614:PlatformErrorCodes.DestinyContentSectionNotFound,
    1615:PlatformErrorCodes.DestinyContentPropertyNotFound,
    1616:PlatformErrorCodes.DestinyContentConfigNotFound,
    1617:PlatformErrorCodes.DestinyContentPropertyBucketValueNotFound,
    1618:PlatformErrorCodes.DestinyUnexpectedError,
    1619:PlatformErrorCodes.DestinyInvalidAction,
    1620:PlatformErrorCodes.DestinyCharacterNotFound,
    1621:PlatformErrorCodes.DestinyInvalidFlag,
    1622:PlatformErrorCodes.DestinyInvalidRequest,
    1623:PlatformErrorCodes.DestinyItemNotFound,
    1624:PlatformErrorCodes.DestinyInvalidCustomizationChoices,
    1625:PlatformErrorCodes.DestinyVendorItemNotFound,
    1626:PlatformErrorCodes.DestinyInternalError,
    1627:PlatformErrorCodes.DestinyVendorNotFound,
    1628:PlatformErrorCodes.DestinyRecentActivitiesDatabaseError,
    1629:PlatformErrorCodes.DestinyItemBucketNotFound,
    1630:PlatformErrorCodes.DestinyInvalidMembershipType,
    1631:PlatformErrorCodes.DestinyVersionIncompatibility,
    1632:PlatformErrorCodes.DestinyItemAlreadyInInventory,
    1633:PlatformErrorCodes.DestinyBucketNotFound,
    1634:PlatformErrorCodes.DestinyCharacterNotInTower,
    1635:PlatformErrorCodes.DestinyCharacterNotLoggedIn,
    1636:PlatformErrorCodes.DestinyDefinitionsNotLoaded,
    1637:PlatformErrorCodes.DestinyInventoryFull,
    1638:PlatformErrorCodes.DestinyItemFailedLevelCheck,
    1639:PlatformErrorCodes.DestinyItemFailedUnlockCheck,
    1640:PlatformErrorCodes.DestinyItemUnequippable,
    1641:PlatformErrorCodes.DestinyItemUniqueEquipRestricted,
    1642:PlatformErrorCodes.DestinyNoRoomInDestination,
    1643:PlatformErrorCodes.DestinyServiceFailure,
    1644:PlatformErrorCodes.DestinyServiceRetired,
    1645:PlatformErrorCodes.DestinyTransferFailed,
    1646:PlatformErrorCodes.DestinyTransferNotFoundForSourceBucket,
    1647:PlatformErrorCodes.DestinyUnexpectedResultInVendorTransferCheck,
    1648:PlatformErrorCodes.DestinyUniquenessViolation,
    1649:PlatformErrorCodes.DestinyErrorDeserializationFailure,
    1650:PlatformErrorCodes.DestinyValidAccountTicketRequired,
    1651:PlatformErrorCodes.DestinyShardRelayClientTimeout,
    1652:PlatformErrorCodes.DestinyShardRelayProxyTimeout,
    1653:PlatformErrorCodes.DestinyPGCRNotFound,
    1654:PlatformErrorCodes.DestinyAccountMustBeOffline,
    1655:PlatformErrorCodes.DestinyCanOnlyEquipInGame,
    1656:PlatformErrorCodes.DestinyCannotPerformActionOnEquippedItem,
    1657:PlatformErrorCodes.DestinyQuestAlreadyCompleted,
    1658:PlatformErrorCodes.DestinyQuestAlreadyTracked,
    1659:PlatformErrorCodes.DestinyTrackableQuestsFull,
    1660:PlatformErrorCodes.DestinyItemNotTransferrable,
    1661:PlatformErrorCodes.DestinyVendorPurchaseNotAllowed,
    1662:PlatformErrorCodes.DestinyContentVersionMismatch,
    1663:PlatformErrorCodes.DestinyItemActionForbidden,
    1664:PlatformErrorCodes.DestinyRefundInvalid,
    1665:PlatformErrorCodes.DestinyPrivacyRestriction,
    1666:PlatformErrorCodes.DestinyActionInsufficientPrivileges,
    1667:PlatformErrorCodes.DestinyInvalidClaimException,
    1668:PlatformErrorCodes.DestinyLegacyPlatformRestricted,
    1669:PlatformErrorCodes.DestinyLegacyPlatformInUse,
    1670:PlatformErrorCodes.DestinyLegacyPlatformInaccessible,
    1671:PlatformErrorCodes.DestinyCannotPerformActionAtThisLocation,
    1672:PlatformErrorCodes.DestinyThrottledByGameServer,
    1673:PlatformErrorCodes.DestinyItemNotTransferrableHasSideEffects,
    1674:PlatformErrorCodes.DestinyItemLocked,
    1675:PlatformErrorCodes.DestinyCannotAffordMaterialRequirements,
    1676:PlatformErrorCodes.DestinyFailedPlugInsertionRules,
    1677:PlatformErrorCodes.DestinySocketNotFound,
    1678:PlatformErrorCodes.DestinySocketActionNotAllowed,
    1679:PlatformErrorCodes.DestinySocketAlreadyHasPlug,
    1680:PlatformErrorCodes.DestinyPlugItemNotAvailable,
    1681:PlatformErrorCodes.DestinyCharacterLoggedInNotAllowed,
    1682:PlatformErrorCodes.DestinyPublicAccountNotAccessible,
    1683:PlatformErrorCodes.DestinyClaimsItemAlreadyClaimed,
    1684:PlatformErrorCodes.DestinyClaimsNoInventorySpace,
    1685:PlatformErrorCodes.DestinyClaimsRequiredLevelNotMet,
    1686:PlatformErrorCodes.DestinyClaimsInvalidState,
    1687:PlatformErrorCodes.DestinyNotEnoughRoomForMultipleRewards,
    1688:PlatformErrorCodes.DestinyDirectBabelClientTimeout,
    1800:PlatformErrorCodes.FbInvalidRequest,
    1801:PlatformErrorCodes.FbRedirectMismatch,
    1802:PlatformErrorCodes.FbAccessDenied,
    1803:PlatformErrorCodes.FbUnsupportedResponseType,
    1804:PlatformErrorCodes.FbInvalidScope,
    1805:PlatformErrorCodes.FbUnsupportedGrantType,
    1806:PlatformErrorCodes.FbInvalidGrant,
    1900:PlatformErrorCodes.InvitationExpired,
    1901:PlatformErrorCodes.InvitationUnknownType,
    1902:PlatformErrorCodes.InvitationInvalidResponseStatus,
    1903:PlatformErrorCodes.InvitationInvalidType,
    1904:PlatformErrorCodes.InvitationAlreadyPending,
    1905:PlatformErrorCodes.InvitationInsufficientPermission,
    1906:PlatformErrorCodes.InvitationInvalidCode,
    1907:PlatformErrorCodes.InvitationInvalidTargetState,
    1908:PlatformErrorCodes.InvitationCannotBeReactivated,
    1910:PlatformErrorCodes.InvitationNoRecipients,
    1911:PlatformErrorCodes.InvitationGroupCannotSendToSelf,
    1912:PlatformErrorCodes.InvitationTooManyRecipients,
    1913:PlatformErrorCodes.InvitationInvalid,
    1914:PlatformErrorCodes.InvitationNotFound,
    2000:PlatformErrorCodes.TokenInvalid,
    2001:PlatformErrorCodes.TokenBadFormat,
    2002:PlatformErrorCodes.TokenAlreadyClaimed,
    2003:PlatformErrorCodes.TokenAlreadyClaimedSelf,
    2004:PlatformErrorCodes.TokenThrottling,
    2005:PlatformErrorCodes.TokenUnknownRedemptionFailure,
    2006:PlatformErrorCodes.TokenPurchaseClaimFailedAfterTokenClaimed,
    2007:PlatformErrorCodes.TokenUserAlreadyOwnsOffer,
    2008:PlatformErrorCodes.TokenInvalidOfferKey,
    2009:PlatformErrorCodes.TokenEmailNotValidated,
    2010:PlatformErrorCodes.TokenProvisioningBadVendorOrOffer,
    2011:PlatformErrorCodes.TokenPurchaseHistoryUnknownError,
    2012:PlatformErrorCodes.TokenThrottleStateUnknownError,
    2013:PlatformErrorCodes.TokenUserAgeNotVerified,
    2014:PlatformErrorCodes.TokenExceededOfferMaximum,
    2015:PlatformErrorCodes.TokenNoAvailableUnlocks,
    2016:PlatformErrorCodes.TokenMarketplaceInvalidPlatform,
    2017:PlatformErrorCodes.TokenNoMarketplaceCodesFound,
    2018:PlatformErrorCodes.TokenOfferNotAvailableForRedemption,
    2019:PlatformErrorCodes.TokenUnlockPartialFailure,
    2020:PlatformErrorCodes.TokenMarketplaceInvalidRegion,
    2021:PlatformErrorCodes.TokenOfferExpired,
    2022:PlatformErrorCodes.RAFExceededMaximumReferrals,
    2023:PlatformErrorCodes.RAFDuplicateBond,
    2024:PlatformErrorCodes.RAFNoValidVeteranDestinyMembershipsFound,
    2025:PlatformErrorCodes.RAFNotAValidVeteranUser,
    2026:PlatformErrorCodes.RAFCodeAlreadyClaimedOrNotFound,
    2027:PlatformErrorCodes.RAFMismatchedDestinyMembershipType,
    2028:PlatformErrorCodes.RAFUnableToAccessPurchaseHistory,
    2029:PlatformErrorCodes.RAFUnableToCreateBond,
    2030:PlatformErrorCodes.RAFUnableToFindBond,
    2031:PlatformErrorCodes.RAFUnableToRemoveBond,
    2032:PlatformErrorCodes.RAFCannotBondToSelf,
    2033:PlatformErrorCodes.RAFInvalidPlatform,
    2034:PlatformErrorCodes.RAFGenerateThrottled,
    2035:PlatformErrorCodes.RAFUnableToCreateBondVersionMismatch,
    2036:PlatformErrorCodes.RAFUnableToRemoveBondVersionMismatch,
    2037:PlatformErrorCodes.RAFRedeemThrottled,
    2038:PlatformErrorCodes.NoAvailableDiscountCode,
    2039:PlatformErrorCodes.DiscountAlreadyClaimed,
    2040:PlatformErrorCodes.DiscountClaimFailure,
    2041:PlatformErrorCodes.DiscountConfigurationFailure,
    2042:PlatformErrorCodes.DiscountGenerationFailure,
    2043:PlatformErrorCodes.DiscountAlreadyExists,
    2044:PlatformErrorCodes.TokenRequiresCredentialXuid,
    2045:PlatformErrorCodes.TokenRequiresCredentialPsnid,
    2046:PlatformErrorCodes.OfferRequired,
    2047:PlatformErrorCodes.UnknownEververseHistoryError,
    2048:PlatformErrorCodes.MissingEververseHistoryError,
    2049:PlatformErrorCodes.BungieRewardEmailStateInvalid,
    2050:PlatformErrorCodes.BungieRewardNotYetClaimable,
    2051:PlatformErrorCodes.MissingOfferConfig,
    2052:PlatformErrorCodes.RAFQuestEntitlementRequiresBnet,
    2053:PlatformErrorCodes.RAFQuestEntitlementTransportFailure,
    2054:PlatformErrorCodes.RAFQuestEntitlementUnknownFailure,
    2055:PlatformErrorCodes.RAFVeteranRewardUnknownFailure,
    2056:PlatformErrorCodes.RAFTooEarlyToCancelBond,
    2057:PlatformErrorCodes.LoyaltyRewardAlreadyRedeemed,
    2058:PlatformErrorCodes.UnclaimedLoyaltyRewardEntryNotFound,
    2059:PlatformErrorCodes.PartnerOfferPartialFailure,
    2060:PlatformErrorCodes.PartnerOfferAlreadyClaimed,
    2061:PlatformErrorCodes.PartnerOfferSkuNotFound,
    2062:PlatformErrorCodes.PartnerOfferSkuExpired,
    2063:PlatformErrorCodes.PartnerOfferPermissionFailure,
    2064:PlatformErrorCodes.PartnerOfferNoDestinyAccount,
    2065:PlatformErrorCodes.PartnerOfferApplyDataNotFound,
    2100:PlatformErrorCodes.ApiExceededMaxKeys,
    2101:PlatformErrorCodes.ApiInvalidOrExpiredKey,
    2102:PlatformErrorCodes.ApiKeyMissingFromRequest,
    2103:PlatformErrorCodes.ApplicationDisabled,
    2104:PlatformErrorCodes.ApplicationExceededMax,
    2105:PlatformErrorCodes.ApplicationDisallowedByScope,
    2106:PlatformErrorCodes.AuthorizationCodeInvalid,
    2107:PlatformErrorCodes.OriginHeaderDoesNotMatchKey,
    2108:PlatformErrorCodes.AccessNotPermittedByApplicationScope,
    2109:PlatformErrorCodes.ApplicationNameIsTaken,
    2110:PlatformErrorCodes.RefreshTokenNotYetValid,
    2111:PlatformErrorCodes.AccessTokenHasExpired,
    2112:PlatformErrorCodes.ApplicationTokenFormatNotValid,
    2113:PlatformErrorCodes.ApplicationNotConfiguredForBungieAuth,
    2114:PlatformErrorCodes.ApplicationNotConfiguredForOAuth,
    2115:PlatformErrorCodes.OAuthAccessTokenExpired,
    2116:PlatformErrorCodes.ApplicationTokenKeyIdDoesNotExist,
    2117:PlatformErrorCodes.ProvidedTokenNotValidRefreshToken,
    2118:PlatformErrorCodes.RefreshTokenExpired,
    2119:PlatformErrorCodes.AuthorizationRecordInvalid,
    2120:PlatformErrorCodes.TokenPreviouslyRevoked,
    2121:PlatformErrorCodes.TokenInvalidMembership,
    2122:PlatformErrorCodes.AuthorizationCodeStale,
    2123:PlatformErrorCodes.AuthorizationRecordExpired,
    2124:PlatformErrorCodes.AuthorizationRecordRevoked,
    2125:PlatformErrorCodes.AuthorizationRecordInactiveApiKey,
    2126:PlatformErrorCodes.AuthorizationRecordApiKeyMatching,
    2200:PlatformErrorCodes.PartnershipInvalidType,
    2201:PlatformErrorCodes.PartnershipValidationError,
    2202:PlatformErrorCodes.PartnershipValidationTimeout,
    2203:PlatformErrorCodes.PartnershipAccessFailure,
    2204:PlatformErrorCodes.PartnershipAccountInvalid,
    2205:PlatformErrorCodes.PartnershipGetAccountInfoFailure,
    2206:PlatformErrorCodes.PartnershipDisabled,
    2207:PlatformErrorCodes.PartnershipAlreadyExists,
    2300:PlatformErrorCodes.CommunityStreamingUnavailable,
    2500:PlatformErrorCodes.TwitchNotLinked,
    2501:PlatformErrorCodes.TwitchAccountNotFound,
    2502:PlatformErrorCodes.TwitchCouldNotLoadDestinyInfo,
    2503:PlatformErrorCodes.TwitchCouldNotRegisterUser,
    2504:PlatformErrorCodes.TwitchCouldNotUnregisterUser,
    2505:PlatformErrorCodes.TwitchRequiresRelinking,
    2506:PlatformErrorCodes.TwitchNoPlatformChosen,
    2507:PlatformErrorCodes.TwitchDropHistoryPermissionFailure,
    2508:PlatformErrorCodes.TwitchDropsRepairPartialFailure,
    2509:PlatformErrorCodes.TwitchNotAuthorized,
    2510:PlatformErrorCodes.TwitchUnknownAuthorizationFailure,
    2600:PlatformErrorCodes.TrendingCategoryNotFound,
    2601:PlatformErrorCodes.TrendingEntryTypeNotSupported,
    2700:PlatformErrorCodes.ReportOffenderNotInPgcr,
    2701:PlatformErrorCodes.ReportRequestorNotInPgcr,
    2702:PlatformErrorCodes.ReportSubmissionFailed,
    2703:PlatformErrorCodes.ReportCannotReportSelf,
    2800:PlatformErrorCodes.AwaTypeDisabled,
    2801:PlatformErrorCodes.AwaTooManyPendingRequests,
    2802:PlatformErrorCodes.AwaTheFeatureRequiresARegisteredDevice,
    2803:PlatformErrorCodes.AwaRequestWasUnansweredForTooLong,
    2804:PlatformErrorCodes.AwaWriteRequestMissingOrInvalidToken,
    2805:PlatformErrorCodes.AwaWriteRequestTokenExpired,
    2806:PlatformErrorCodes.AwaWriteRequestTokenUsageLimitReached,
    2900:PlatformErrorCodes.SteamWebApiError,
    2901:PlatformErrorCodes.SteamWebNullResponseError,
    2902:PlatformErrorCodes.SteamAccountRequired,
    2903:PlatformErrorCodes.SteamNotAuthorized,
    3000:PlatformErrorCodes.ClanFireteamNotFound,
    3001:PlatformErrorCodes.ClanFireteamAddNoAlternatesForImmediate,
    3002:PlatformErrorCodes.ClanFireteamFull,
    3003:PlatformErrorCodes.ClanFireteamAltFull,
    3004:PlatformErrorCodes.ClanFireteamBlocked,
    3005:PlatformErrorCodes.ClanFireteamPlayerEntryNotFound,
    3006:PlatformErrorCodes.ClanFireteamPermissions,
    3007:PlatformErrorCodes.ClanFireteamInvalidPlatform,
    3008:PlatformErrorCodes.ClanFireteamCannotAdjustSlotCount,
    3009:PlatformErrorCodes.ClanFireteamInvalidPlayerPlatform,
    3010:PlatformErrorCodes.ClanFireteamNotReadyForInvitesNotEnoughPlayers,
    3011:PlatformErrorCodes.ClanFireteamGameInvitesNotSupportForPlatform,
    3012:PlatformErrorCodes.ClanFireteamPlatformInvitePreqFailure,
    3013:PlatformErrorCodes.ClanFireteamInvalidAuthContext,
    3014:PlatformErrorCodes.ClanFireteamInvalidAuthProviderPsn,
    3015:PlatformErrorCodes.ClanFireteamPs4SessionFull,
    3016:PlatformErrorCodes.ClanFireteamInvalidAuthToken,
    3017:PlatformErrorCodes.ClanFireteamScheduledFireteamsDisabled,
    3018:PlatformErrorCodes.ClanFireteamNotReadyForInvitesNotScheduledYet,
    3019:PlatformErrorCodes.ClanFireteamNotReadyForInvitesClosed,
    3020:PlatformErrorCodes.ClanFireteamScheduledFireteamsRequireAdminPermissions,
    3021:PlatformErrorCodes.ClanFireteamNonPublicMustHaveClan,
    3022:PlatformErrorCodes.ClanFireteamPublicCreationRestriction,
    3023:PlatformErrorCodes.ClanFireteamAlreadyJoined,
    3024:PlatformErrorCodes.ClanFireteamScheduledFireteamsRange,
    3025:PlatformErrorCodes.ClanFireteamPublicCreationRestrictionExtended,
    3026:PlatformErrorCodes.ClanFireteamExpired,
    3027:PlatformErrorCodes.ClanFireteamInvalidAuthProvider,
    3028:PlatformErrorCodes.ClanFireteamInvalidAuthProviderXuid,
    3029:PlatformErrorCodes.ClanFireteamThrottle,
    3030:PlatformErrorCodes.ClanFireteamTooManyOpenScheduledFireteams,
    3031:PlatformErrorCodes.ClanFireteamCannotReopenScheduledFireteams,
    3032:PlatformErrorCodes.ClanFireteamJoinNoAccountSpecified,
    3033:PlatformErrorCodes.ClanFireteamMinDestiny2ProgressForCreation,
    3034:PlatformErrorCodes.ClanFireteamMinDestiny2ProgressForJoin,
    3035:PlatformErrorCodes.ClanFireteamSMSOrPurchaseRequiredCreate,
    3036:PlatformErrorCodes.ClanFireteamPurchaseRequiredCreate,
    3037:PlatformErrorCodes.ClanFireteamSMSOrPurchaseRequiredJoin,
    3038:PlatformErrorCodes.ClanFireteamPurchaseRequiredJoin,
    3200:PlatformErrorCodes.CrossSaveOverriddenAccountNotFound,
    3201:PlatformErrorCodes.CrossSaveTooManyOverriddenPlatforms,
    3202:PlatformErrorCodes.CrossSaveNoOverriddenPlatforms,
    3203:PlatformErrorCodes.CrossSavePrimaryAccountNotFound,
    3204:PlatformErrorCodes.CrossSaveRequestInvalid,
    3206:PlatformErrorCodes.CrossSaveBungieAccountValidationFailure,
    3207:PlatformErrorCodes.CrossSaveOverriddenPlatformNotAllowed,
    3208:PlatformErrorCodes.CrossSaveThresholdExceeded,
    3209:PlatformErrorCodes.CrossSaveIncompatibleMembershipType,
    3210:PlatformErrorCodes.CrossSaveCouldNotFindLinkedAccountForMembershipType,
    3211:PlatformErrorCodes.CrossSaveCouldNotCreateDestinyProfileForMembershipType,
    3212:PlatformErrorCodes.CrossSaveErrorCreatingDestinyProfileForMembershipType,
    3213:PlatformErrorCodes.CrossSaveCannotOverrideSelf,
    3214:PlatformErrorCodes.CrossSaveRecentSilverPurchase,
    3215:PlatformErrorCodes.CrossSaveSilverBalanceNegative,
    3216:PlatformErrorCodes.CrossSaveAccountNotAuthenticated,
    3217:PlatformErrorCodes.ErrorOneAccountAlreadyActive,
    3218:PlatformErrorCodes.ErrorOneAccountDestinyRestriction,
    3219:PlatformErrorCodes.CrossSaveMustMigrateToSteam,
    3220:PlatformErrorCodes.CrossSaveSteamAlreadyPaired,
    3221:PlatformErrorCodes.CrossSaveCannotPairJustSteamAndBlizzard,
    3222:PlatformErrorCodes.CrossSaveCannotPairSteamAloneBeforeShadowkeep,
    3300:PlatformErrorCodes.AuthVerificationNotLinkedToAccount,
    3400:PlatformErrorCodes.PCMigrationMissingBlizzard,
    3401:PlatformErrorCodes.PCMigrationMissingSteam,
    3402:PlatformErrorCodes.PCMigrationInvalidBlizzard,
    3403:PlatformErrorCodes.PCMigrationInvalidSteam,
    3404:PlatformErrorCodes.PCMigrationUnknownFailure,
    3405:PlatformErrorCodes.PCMigrationUnknownException,
    3406:PlatformErrorCodes.PCMigrationNotLinked,
    3407:PlatformErrorCodes.PCMigrationAccountsAlreadyUsed,
    3408:PlatformErrorCodes.PCMigrationStepFailed,
    3409:PlatformErrorCodes.PCMigrationInvalidBlizzardCrossSaveState,
    3410:PlatformErrorCodes.PCMigrationDestinationBanned,
    3411:PlatformErrorCodes.PCMigrationDestinyFailure,
    3412:PlatformErrorCodes.PCMigrationSilverTransferFailed,
    3413:PlatformErrorCodes.PCMigrationEntitlementTransferFailed,
    3414:PlatformErrorCodes.PCMigrationCannotStompClanFounder,
    3500:PlatformErrorCodes.UnsupportedBrowser,
    3600:PlatformErrorCodes.StadiaAccountRequired,
    3702:PlatformErrorCodes.ErrorPhoneValidationTooManyUses,
    3703:PlatformErrorCodes.ErrorPhoneValidationNoAssociatedPhone,
    3705:PlatformErrorCodes.ErrorPhoneValidationCodeInvalid,
    3706:PlatformErrorCodes.ErrorPhoneValidationBanned,
    3707:PlatformErrorCodes.ErrorPhoneValidationCodeTooRecentlySent,
    3708:PlatformErrorCodes.ErrorPhoneValidationCodeExpired,
    3709:PlatformErrorCodes.ErrorPhoneValidationInvalidNumberType,
    3710:PlatformErrorCodes.ErrorPhoneValidationCodeTooRecentlyChecked,
    3800:PlatformErrorCodes.ApplePushErrorUnknown,
    3801:PlatformErrorCodes.ApplePushErrorNull,
    3802:PlatformErrorCodes.ApplePushErrorTimeout,
    3803:PlatformErrorCodes.ApplePushBadRequest,
    3804:PlatformErrorCodes.ApplePushFailedAuth,
    3805:PlatformErrorCodes.ApplePushThrottled,
    3806:PlatformErrorCodes.ApplePushServiceUnavailable,
    3807:PlatformErrorCodes.NotAnImageOrVideo,
    3900:PlatformErrorCodes.ErrorBungieFriendsBlockFailed,
    3901:PlatformErrorCodes.ErrorBungieFriendsAutoReject,
    3902:PlatformErrorCodes.ErrorBungieFriendsNoRequestFound,
    3903:PlatformErrorCodes.ErrorBungieFriendsAlreadyFriends,
    3904:PlatformErrorCodes.ErrorBungieFriendsUnableToRemoveRequest,
    3905:PlatformErrorCodes.ErrorBungieFriendsUnableToRemove,
    3906:PlatformErrorCodes.ErrorBungieFriendsIdenticalSourceTarget,
    3907:PlatformErrorCodes.ErrorBungieFriendsSelf,
    3908:PlatformErrorCodes.ErrorBungieBlockSelf,
    3910:PlatformErrorCodes.ErrorBungieFriendsListFull,
    3911:PlatformErrorCodes.ErrorBungieBlockListFull,
    4000:PlatformErrorCodes.ErrorEgsUnknown,
    4001:PlatformErrorCodes.ErrorEgsBadRequest,
    4002:PlatformErrorCodes.ErrorEgsNotAuthorized,
    4003:PlatformErrorCodes.ErrorEgsForbidden,
    4004:PlatformErrorCodes.ErrorEgsAccountNotFound,
    4005:PlatformErrorCodes.ErrorEgsWebException,
    4006:PlatformErrorCodes.ErrorEgsUnavailable,
    4007:PlatformErrorCodes.ErrorEgsJwksMissing,
    4008:PlatformErrorCodes.ErrorEgsJwtMalformedHeader,
    4009:PlatformErrorCodes.ErrorEgsJwtMalformedPayload,
};