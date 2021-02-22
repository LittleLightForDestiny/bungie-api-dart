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
  /// Deprecated, please do not check for this value anywhere.
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
  ///value not found fallback
  @JsonValue(999999999)
  ProtectedInvalidEnumValue
}

extension PlatformErrorCodesExtension on PlatformErrorCodes{
  int get value {
    switch(this){
      case PlatformErrorCodes.None:
        return 0;
      case PlatformErrorCodes.Success:
        return 1;
      case PlatformErrorCodes.TransportException:
        return 2;
      case PlatformErrorCodes.UnhandledException:
        return 3;
      case PlatformErrorCodes.NotImplemented:
        return 4;
      case PlatformErrorCodes.SystemDisabled:
        return 5;
      case PlatformErrorCodes.FailedToLoadAvailableLocalesConfiguration:
        return 6;
      case PlatformErrorCodes.ParameterParseFailure:
        return 7;
      case PlatformErrorCodes.ParameterInvalidRange:
        return 8;
      case PlatformErrorCodes.BadRequest:
        return 9;
      case PlatformErrorCodes.AuthenticationInvalid:
        return 10;
      case PlatformErrorCodes.DataNotFound:
        return 11;
      case PlatformErrorCodes.InsufficientPrivileges:
        return 12;
      case PlatformErrorCodes.Duplicate:
        return 13;
      case PlatformErrorCodes.UnknownSqlResult:
        return 14;
      case PlatformErrorCodes.ValidationError:
        return 15;
      case PlatformErrorCodes.ValidationMissingFieldError:
        return 16;
      case PlatformErrorCodes.ValidationInvalidInputError:
        return 17;
      case PlatformErrorCodes.InvalidParameters:
        return 18;
      case PlatformErrorCodes.ParameterNotFound:
        return 19;
      case PlatformErrorCodes.UnhandledHttpException:
        return 20;
      case PlatformErrorCodes.NotFound:
        return 21;
      case PlatformErrorCodes.WebAuthModuleAsyncFailed:
        return 22;
      case PlatformErrorCodes.InvalidReturnValue:
        return 23;
      case PlatformErrorCodes.UserBanned:
        return 24;
      case PlatformErrorCodes.InvalidPostBody:
        return 25;
      case PlatformErrorCodes.MissingPostBody:
        return 26;
      case PlatformErrorCodes.ExternalServiceTimeout:
        return 27;
      case PlatformErrorCodes.ValidationLengthError:
        return 28;
      case PlatformErrorCodes.ValidationRangeError:
        return 29;
      case PlatformErrorCodes.JsonDeserializationError:
        return 30;
      case PlatformErrorCodes.ThrottleLimitExceeded:
        return 31;
      case PlatformErrorCodes.ValidationTagError:
        return 32;
      case PlatformErrorCodes.ValidationProfanityError:
        return 33;
      case PlatformErrorCodes.ValidationUrlFormatError:
        return 34;
      case PlatformErrorCodes.ThrottleLimitExceededMinutes:
        return 35;
      case PlatformErrorCodes.ThrottleLimitExceededMomentarily:
        return 36;
      case PlatformErrorCodes.ThrottleLimitExceededSeconds:
        return 37;
      case PlatformErrorCodes.ExternalServiceUnknown:
        return 38;
      case PlatformErrorCodes.ValidationWordLengthError:
        return 39;
      case PlatformErrorCodes.ValidationInvisibleUnicode:
        return 40;
      case PlatformErrorCodes.ValidationBadNames:
        return 41;
      case PlatformErrorCodes.ExternalServiceFailed:
        return 42;
      case PlatformErrorCodes.ServiceRetired:
        return 43;
      case PlatformErrorCodes.UnknownSqlException:
        return 44;
      case PlatformErrorCodes.UnsupportedLocale:
        return 45;
      case PlatformErrorCodes.InvalidPageNumber:
        return 46;
      case PlatformErrorCodes.MaximumPageSizeExceeded:
        return 47;
      case PlatformErrorCodes.ServiceUnsupported:
        return 48;
      case PlatformErrorCodes.ValidationMaximumUnicodeCombiningCharacters:
        return 49;
      case PlatformErrorCodes.ValidationMaximumSequentialCarriageReturns:
        return 50;
      case PlatformErrorCodes.PerEndpointRequestThrottleExceeded:
        return 51;
      case PlatformErrorCodes.AuthContextCacheAssertion:
        return 52;
      case PlatformErrorCodes.ExPlatformStringValidationError:
        return 53;
      case PlatformErrorCodes.PerApplicationThrottleExceeded:
        return 54;
      case PlatformErrorCodes.PerApplicationAnonymousThrottleExceeded:
        return 55;
      case PlatformErrorCodes.PerApplicationAuthenticatedThrottleExceeded:
        return 56;
      case PlatformErrorCodes.PerUserThrottleExceeded:
        return 57;
      case PlatformErrorCodes.PayloadSignatureVerificationFailure:
        return 58;
      case PlatformErrorCodes.InvalidServiceAuthContext:
        return 59;
      case PlatformErrorCodes.ObsoleteCredentialType:
        return 89;
      case PlatformErrorCodes.UnableToUnPairMobileApp:
        return 90;
      case PlatformErrorCodes.UnableToPairMobileApp:
        return 91;
      case PlatformErrorCodes.CannotUseMobileAuthWithNonMobileProvider:
        return 92;
      case PlatformErrorCodes.MissingDeviceCookie:
        return 93;
      case PlatformErrorCodes.FacebookTokenExpired:
        return 94;
      case PlatformErrorCodes.AuthTicketRequired:
        return 95;
      case PlatformErrorCodes.CookieContextRequired:
        return 96;
      case PlatformErrorCodes.UnknownAuthenticationError:
        return 97;
      case PlatformErrorCodes.BungieNetAccountCreationRequired:
        return 98;
      case PlatformErrorCodes.WebAuthRequired:
        return 99;
      case PlatformErrorCodes.ContentUnknownSqlResult:
        return 100;
      case PlatformErrorCodes.ContentNeedUniquePath:
        return 101;
      case PlatformErrorCodes.ContentSqlException:
        return 102;
      case PlatformErrorCodes.ContentNotFound:
        return 103;
      case PlatformErrorCodes.ContentSuccessWithTagAddFail:
        return 104;
      case PlatformErrorCodes.ContentSearchMissingParameters:
        return 105;
      case PlatformErrorCodes.ContentInvalidId:
        return 106;
      case PlatformErrorCodes.ContentPhysicalFileDeletionError:
        return 107;
      case PlatformErrorCodes.ContentPhysicalFileCreationError:
        return 108;
      case PlatformErrorCodes.ContentPerforceSubmissionError:
        return 109;
      case PlatformErrorCodes.ContentPerforceInitializationError:
        return 110;
      case PlatformErrorCodes.ContentDeploymentPackageNotReadyError:
        return 111;
      case PlatformErrorCodes.ContentUploadFailed:
        return 112;
      case PlatformErrorCodes.ContentTooManyResults:
        return 113;
      case PlatformErrorCodes.ContentInvalidState:
        return 115;
      case PlatformErrorCodes.ContentNavigationParentNotFound:
        return 116;
      case PlatformErrorCodes.ContentNavigationParentUpdateError:
        return 117;
      case PlatformErrorCodes.DeploymentPackageNotEditable:
        return 118;
      case PlatformErrorCodes.ContentValidationError:
        return 119;
      case PlatformErrorCodes.ContentPropertiesValidationError:
        return 120;
      case PlatformErrorCodes.ContentTypeNotFound:
        return 121;
      case PlatformErrorCodes.DeploymentPackageNotFound:
        return 122;
      case PlatformErrorCodes.ContentSearchInvalidParameters:
        return 123;
      case PlatformErrorCodes.ContentItemPropertyAggregationError:
        return 124;
      case PlatformErrorCodes.DeploymentPackageFileNotFound:
        return 125;
      case PlatformErrorCodes.ContentPerforceFileHistoryNotFound:
        return 126;
      case PlatformErrorCodes.ContentAssetZipCreationFailure:
        return 127;
      case PlatformErrorCodes.ContentAssetZipCreationBusy:
        return 128;
      case PlatformErrorCodes.ContentProjectNotFound:
        return 129;
      case PlatformErrorCodes.ContentFolderNotFound:
        return 130;
      case PlatformErrorCodes.ContentPackagesInconsistent:
        return 131;
      case PlatformErrorCodes.ContentPackagesInvalidState:
        return 132;
      case PlatformErrorCodes.ContentPackagesInconsistentType:
        return 133;
      case PlatformErrorCodes.ContentCannotDeletePackage:
        return 134;
      case PlatformErrorCodes.ContentLockedForChanges:
        return 135;
      case PlatformErrorCodes.ContentFileUploadFailed:
        return 136;
      case PlatformErrorCodes.ContentNotReviewed:
        return 137;
      case PlatformErrorCodes.ContentPermissionDenied:
        return 138;
      case PlatformErrorCodes.ContentInvalidExternalUrl:
        return 139;
      case PlatformErrorCodes.ContentExternalFileCannotBeImportedLocally:
        return 140;
      case PlatformErrorCodes.ContentTagSaveFailure:
        return 141;
      case PlatformErrorCodes.ContentPerforceUnmatchedFileError:
        return 142;
      case PlatformErrorCodes.ContentPerforceChangelistResultNotFound:
        return 143;
      case PlatformErrorCodes.ContentPerforceChangelistFileItemsNotFound:
        return 144;
      case PlatformErrorCodes.ContentPerforceInvalidRevisionError:
        return 145;
      case PlatformErrorCodes.ContentUnloadedSaveResult:
        return 146;
      case PlatformErrorCodes.ContentPropertyInvalidNumber:
        return 147;
      case PlatformErrorCodes.ContentPropertyInvalidUrl:
        return 148;
      case PlatformErrorCodes.ContentPropertyInvalidDate:
        return 149;
      case PlatformErrorCodes.ContentPropertyInvalidSet:
        return 150;
      case PlatformErrorCodes.ContentPropertyCannotDeserialize:
        return 151;
      case PlatformErrorCodes.ContentRegexValidationFailOnProperty:
        return 152;
      case PlatformErrorCodes.ContentMaxLengthFailOnProperty:
        return 153;
      case PlatformErrorCodes.ContentPropertyUnexpectedDeserializationError:
        return 154;
      case PlatformErrorCodes.ContentPropertyRequired:
        return 155;
      case PlatformErrorCodes.ContentCannotCreateFile:
        return 156;
      case PlatformErrorCodes.ContentInvalidMigrationFile:
        return 157;
      case PlatformErrorCodes.ContentMigrationAlteringProcessedItem:
        return 158;
      case PlatformErrorCodes.ContentPropertyDefinitionNotFound:
        return 159;
      case PlatformErrorCodes.ContentReviewDataChanged:
        return 160;
      case PlatformErrorCodes.ContentRollbackRevisionNotInPackage:
        return 161;
      case PlatformErrorCodes.ContentItemNotBasedOnLatestRevision:
        return 162;
      case PlatformErrorCodes.ContentUnauthorized:
        return 163;
      case PlatformErrorCodes.ContentCannotCreateDeploymentPackage:
        return 164;
      case PlatformErrorCodes.ContentUserNotFound:
        return 165;
      case PlatformErrorCodes.ContentLocalePermissionDenied:
        return 166;
      case PlatformErrorCodes.ContentInvalidLinkToInternalEnvironment:
        return 167;
      case PlatformErrorCodes.ContentInvalidBlacklistedContent:
        return 168;
      case PlatformErrorCodes.ContentMacroMalformedNoContentId:
        return 169;
      case PlatformErrorCodes.ContentMacroMalformedNoTemplateType:
        return 170;
      case PlatformErrorCodes.ContentIllegalBNetMembershipId:
        return 171;
      case PlatformErrorCodes.ContentLocaleDidNotMatchExpected:
        return 172;
      case PlatformErrorCodes.ContentBabelCallFailed:
        return 173;
      case PlatformErrorCodes.ContentEnglishPostLiveForbidden:
        return 174;
      case PlatformErrorCodes.ContentLocaleEditPermissionDenied:
        return 175;
      case PlatformErrorCodes.UserNonUniqueName:
        return 200;
      case PlatformErrorCodes.UserManualLinkingStepRequired:
        return 201;
      case PlatformErrorCodes.UserCreateUnknownSqlResult:
        return 202;
      case PlatformErrorCodes.UserCreateUnknownSqlException:
        return 203;
      case PlatformErrorCodes.UserMalformedMembershipId:
        return 204;
      case PlatformErrorCodes.UserCannotFindRequestedUser:
        return 205;
      case PlatformErrorCodes.UserCannotLoadAccountCredentialLinkInfo:
        return 206;
      case PlatformErrorCodes.UserInvalidMobileAppType:
        return 207;
      case PlatformErrorCodes.UserMissingMobilePairingInfo:
        return 208;
      case PlatformErrorCodes.UserCannotGenerateMobileKeyWhileUsingMobileCredential:
        return 209;
      case PlatformErrorCodes.UserGenerateMobileKeyExistingSlotCollision:
        return 210;
      case PlatformErrorCodes.UserDisplayNameMissingOrInvalid:
        return 211;
      case PlatformErrorCodes.UserCannotLoadAccountProfileData:
        return 212;
      case PlatformErrorCodes.UserCannotSaveUserProfileData:
        return 213;
      case PlatformErrorCodes.UserEmailMissingOrInvalid:
        return 214;
      case PlatformErrorCodes.UserTermsOfUseRequired:
        return 215;
      case PlatformErrorCodes.UserCannotCreateNewAccountWhileLoggedIn:
        return 216;
      case PlatformErrorCodes.UserCannotResolveCentralAccount:
        return 217;
      case PlatformErrorCodes.UserInvalidAvatar:
        return 218;
      case PlatformErrorCodes.UserMissingCreatedUserResult:
        return 219;
      case PlatformErrorCodes.UserCannotChangeUniqueNameYet:
        return 220;
      case PlatformErrorCodes.UserCannotChangeDisplayNameYet:
        return 221;
      case PlatformErrorCodes.UserCannotChangeEmail:
        return 222;
      case PlatformErrorCodes.UserUniqueNameMustStartWithLetter:
        return 223;
      case PlatformErrorCodes.UserNoLinkedAccountsSupportFriendListings:
        return 224;
      case PlatformErrorCodes.UserAcknowledgmentTableFull:
        return 225;
      case PlatformErrorCodes.UserCreationDestinyMembershipRequired:
        return 226;
      case PlatformErrorCodes.UserFriendsTokenNeedsRefresh:
        return 227;
      case PlatformErrorCodes.UserEmailValidationUnknown:
        return 228;
      case PlatformErrorCodes.UserEmailValidationLimit:
        return 229;
      case PlatformErrorCodes.TransactionEmailSendFailure:
        return 230;
      case PlatformErrorCodes.MailHookPermissionFailure:
        return 231;
      case PlatformErrorCodes.MailServiceRateLimit:
        return 232;
      case PlatformErrorCodes.UserEmailMustBeVerified:
        return 233;
      case PlatformErrorCodes.UserMustAllowCustomerServiceEmails:
        return 234;
      case PlatformErrorCodes.NonTransactionalEmailSendFailure:
        return 235;
      case PlatformErrorCodes.MessagingUnknownError:
        return 300;
      case PlatformErrorCodes.MessagingSelfError:
        return 301;
      case PlatformErrorCodes.MessagingSendThrottle:
        return 302;
      case PlatformErrorCodes.MessagingNoBody:
        return 303;
      case PlatformErrorCodes.MessagingTooManyUsers:
        return 304;
      case PlatformErrorCodes.MessagingCanNotLeaveConversation:
        return 305;
      case PlatformErrorCodes.MessagingUnableToSend:
        return 306;
      case PlatformErrorCodes.MessagingDeletedUserForbidden:
        return 307;
      case PlatformErrorCodes.MessagingCannotDeleteExternalConversation:
        return 308;
      case PlatformErrorCodes.MessagingGroupChatDisabled:
        return 309;
      case PlatformErrorCodes.MessagingMustIncludeSelfInPrivateMessage:
        return 310;
      case PlatformErrorCodes.MessagingSenderIsBanned:
        return 311;
      case PlatformErrorCodes.MessagingGroupOptionalChatExceededMaximum:
        return 312;
      case PlatformErrorCodes.PrivateMessagingRequiresDestinyMembership:
        return 313;
      case PlatformErrorCodes.AddSurveyAnswersUnknownSqlException:
        return 400;
      case PlatformErrorCodes.ForumBodyCannotBeEmpty:
        return 500;
      case PlatformErrorCodes.ForumSubjectCannotBeEmptyOnTopicPost:
        return 501;
      case PlatformErrorCodes.ForumCannotLocateParentPost:
        return 502;
      case PlatformErrorCodes.ForumThreadLockedForReplies:
        return 503;
      case PlatformErrorCodes.ForumUnknownSqlResultDuringCreatePost:
        return 504;
      case PlatformErrorCodes.ForumUnknownTagCreationError:
        return 505;
      case PlatformErrorCodes.ForumUnknownSqlResultDuringTagItem:
        return 506;
      case PlatformErrorCodes.ForumUnknownExceptionCreatePost:
        return 507;
      case PlatformErrorCodes.ForumQuestionMustBeTopicPost:
        return 508;
      case PlatformErrorCodes.ForumExceptionDuringTagSearch:
        return 509;
      case PlatformErrorCodes.ForumExceptionDuringTopicRetrieval:
        return 510;
      case PlatformErrorCodes.ForumAliasedTagError:
        return 511;
      case PlatformErrorCodes.ForumCannotLocateThread:
        return 512;
      case PlatformErrorCodes.ForumUnknownExceptionEditPost:
        return 513;
      case PlatformErrorCodes.ForumCannotLocatePost:
        return 514;
      case PlatformErrorCodes.ForumUnknownExceptionGetOrCreateTags:
        return 515;
      case PlatformErrorCodes.ForumEditPermissionDenied:
        return 516;
      case PlatformErrorCodes.ForumUnknownSqlResultDuringTagIdRetrieval:
        return 517;
      case PlatformErrorCodes.ForumCannotGetRating:
        return 518;
      case PlatformErrorCodes.ForumUnknownExceptionGetRating:
        return 519;
      case PlatformErrorCodes.ForumRatingsAccessError:
        return 520;
      case PlatformErrorCodes.ForumRelatedPostAccessError:
        return 521;
      case PlatformErrorCodes.ForumLatestReplyAccessError:
        return 522;
      case PlatformErrorCodes.ForumUserStatusAccessError:
        return 523;
      case PlatformErrorCodes.ForumAuthorAccessError:
        return 524;
      case PlatformErrorCodes.ForumGroupAccessError:
        return 525;
      case PlatformErrorCodes.ForumUrlExpectedButMissing:
        return 526;
      case PlatformErrorCodes.ForumRepliesCannotBeEmpty:
        return 527;
      case PlatformErrorCodes.ForumRepliesCannotBeInDifferentGroups:
        return 528;
      case PlatformErrorCodes.ForumSubTopicCannotBeCreatedAtThisThreadLevel:
        return 529;
      case PlatformErrorCodes.ForumCannotCreateContentTopic:
        return 530;
      case PlatformErrorCodes.ForumTopicDoesNotExist:
        return 531;
      case PlatformErrorCodes.ForumContentCommentsNotAllowed:
        return 532;
      case PlatformErrorCodes.ForumUnknownSqlResultDuringEditPost:
        return 533;
      case PlatformErrorCodes.ForumUnknownSqlResultDuringGetPost:
        return 534;
      case PlatformErrorCodes.ForumPostValidationBadUrl:
        return 535;
      case PlatformErrorCodes.ForumBodyTooLong:
        return 536;
      case PlatformErrorCodes.ForumSubjectTooLong:
        return 537;
      case PlatformErrorCodes.ForumAnnouncementNotAllowed:
        return 538;
      case PlatformErrorCodes.ForumCannotShareOwnPost:
        return 539;
      case PlatformErrorCodes.ForumEditNoOp:
        return 540;
      case PlatformErrorCodes.ForumUnknownDatabaseErrorDuringGetPost:
        return 541;
      case PlatformErrorCodes.ForumExceeedMaximumRowLimit:
        return 542;
      case PlatformErrorCodes.ForumCannotSharePrivatePost:
        return 543;
      case PlatformErrorCodes.ForumCannotCrossPostBetweenGroups:
        return 544;
      case PlatformErrorCodes.ForumIncompatibleCategories:
        return 555;
      case PlatformErrorCodes.ForumCannotUseTheseCategoriesOnNonTopicPost:
        return 556;
      case PlatformErrorCodes.ForumCanOnlyDeleteTopics:
        return 557;
      case PlatformErrorCodes.ForumDeleteSqlException:
        return 558;
      case PlatformErrorCodes.ForumDeleteSqlUnknownResult:
        return 559;
      case PlatformErrorCodes.ForumTooManyTags:
        return 560;
      case PlatformErrorCodes.ForumCanOnlyRateTopics:
        return 561;
      case PlatformErrorCodes.ForumBannedPostsCannotBeEdited:
        return 562;
      case PlatformErrorCodes.ForumThreadRootIsBanned:
        return 563;
      case PlatformErrorCodes.ForumCannotUseOfficialTagCategoryAsTag:
        return 564;
      case PlatformErrorCodes.ForumAnswerCannotBeMadeOnCreatePost:
        return 565;
      case PlatformErrorCodes.ForumAnswerCannotBeMadeOnEditPost:
        return 566;
      case PlatformErrorCodes.ForumAnswerPostIdIsNotADirectReplyOfQuestion:
        return 567;
      case PlatformErrorCodes.ForumAnswerTopicIdIsNotAQuestion:
        return 568;
      case PlatformErrorCodes.ForumUnknownExceptionDuringMarkAnswer:
        return 569;
      case PlatformErrorCodes.ForumUnknownSqlResultDuringMarkAnswer:
        return 570;
      case PlatformErrorCodes.ForumCannotRateYourOwnPosts:
        return 571;
      case PlatformErrorCodes.ForumPollsMustBeTheFirstPostInTopic:
        return 572;
      case PlatformErrorCodes.ForumInvalidPollInput:
        return 573;
      case PlatformErrorCodes.ForumGroupAdminEditNonMember:
        return 574;
      case PlatformErrorCodes.ForumCannotEditModeratorEditedPost:
        return 575;
      case PlatformErrorCodes.ForumRequiresDestinyMembership:
        return 576;
      case PlatformErrorCodes.ForumUnexpectedError:
        return 577;
      case PlatformErrorCodes.ForumAgeLock:
        return 578;
      case PlatformErrorCodes.ForumMaxPages:
        return 579;
      case PlatformErrorCodes.ForumMaxPagesOldestFirst:
        return 580;
      case PlatformErrorCodes.ForumCannotApplyForumIdWithoutTags:
        return 581;
      case PlatformErrorCodes.ForumCannotApplyForumIdToNonTopics:
        return 582;
      case PlatformErrorCodes.ForumCannotDownvoteCommunityCreations:
        return 583;
      case PlatformErrorCodes.ForumTopicsMustHaveOfficialCategory:
        return 584;
      case PlatformErrorCodes.ForumRecruitmentTopicMalformed:
        return 585;
      case PlatformErrorCodes.ForumRecruitmentTopicNotFound:
        return 586;
      case PlatformErrorCodes.ForumRecruitmentTopicNoSlotsRemaining:
        return 587;
      case PlatformErrorCodes.ForumRecruitmentTopicKickBan:
        return 588;
      case PlatformErrorCodes.ForumRecruitmentTopicRequirementsNotMet:
        return 589;
      case PlatformErrorCodes.ForumRecruitmentTopicNoPlayers:
        return 590;
      case PlatformErrorCodes.ForumRecruitmentApproveFailMessageBan:
        return 591;
      case PlatformErrorCodes.ForumRecruitmentGlobalBan:
        return 592;
      case PlatformErrorCodes.ForumUserBannedFromThisTopic:
        return 593;
      case PlatformErrorCodes.ForumRecruitmentFireteamMembersOnly:
        return 594;
      case PlatformErrorCodes.ForumRequiresDestiny2Progress:
        return 595;
      case PlatformErrorCodes.GroupMembershipApplicationAlreadyResolved:
        return 601;
      case PlatformErrorCodes.GroupMembershipAlreadyApplied:
        return 602;
      case PlatformErrorCodes.GroupMembershipInsufficientPrivileges:
        return 603;
      case PlatformErrorCodes.GroupIdNotReturnedFromCreation:
        return 604;
      case PlatformErrorCodes.GroupSearchInvalidParameters:
        return 605;
      case PlatformErrorCodes.GroupMembershipPendingApplicationNotFound:
        return 606;
      case PlatformErrorCodes.GroupInvalidId:
        return 607;
      case PlatformErrorCodes.GroupInvalidMembershipId:
        return 608;
      case PlatformErrorCodes.GroupInvalidMembershipType:
        return 609;
      case PlatformErrorCodes.GroupMissingTags:
        return 610;
      case PlatformErrorCodes.GroupMembershipNotFound:
        return 611;
      case PlatformErrorCodes.GroupInvalidRating:
        return 612;
      case PlatformErrorCodes.GroupUserFollowingAccessError:
        return 613;
      case PlatformErrorCodes.GroupUserMembershipAccessError:
        return 614;
      case PlatformErrorCodes.GroupCreatorAccessError:
        return 615;
      case PlatformErrorCodes.GroupAdminAccessError:
        return 616;
      case PlatformErrorCodes.GroupPrivatePostNotViewable:
        return 617;
      case PlatformErrorCodes.GroupMembershipNotLoggedIn:
        return 618;
      case PlatformErrorCodes.GroupNotDeleted:
        return 619;
      case PlatformErrorCodes.GroupUnknownErrorUndeletingGroup:
        return 620;
      case PlatformErrorCodes.GroupDeleted:
        return 621;
      case PlatformErrorCodes.GroupNotFound:
        return 622;
      case PlatformErrorCodes.GroupMemberBanned:
        return 623;
      case PlatformErrorCodes.GroupMembershipClosed:
        return 624;
      case PlatformErrorCodes.GroupPrivatePostOverrideError:
        return 625;
      case PlatformErrorCodes.GroupNameTaken:
        return 626;
      case PlatformErrorCodes.GroupDeletionGracePeriodExpired:
        return 627;
      case PlatformErrorCodes.GroupCannotCheckBanStatus:
        return 628;
      case PlatformErrorCodes.GroupMaximumMembershipCountReached:
        return 629;
      case PlatformErrorCodes.NoDestinyAccountForClanPlatform:
        return 630;
      case PlatformErrorCodes.AlreadyRequestingMembershipForClanPlatform:
        return 631;
      case PlatformErrorCodes.AlreadyClanMemberOnPlatform:
        return 632;
      case PlatformErrorCodes.GroupJoinedCannotSetClanName:
        return 633;
      case PlatformErrorCodes.GroupLeftCannotClearClanName:
        return 634;
      case PlatformErrorCodes.GroupRelationshipRequestPending:
        return 635;
      case PlatformErrorCodes.GroupRelationshipRequestBlocked:
        return 636;
      case PlatformErrorCodes.GroupRelationshipRequestNotFound:
        return 637;
      case PlatformErrorCodes.GroupRelationshipBlockNotFound:
        return 638;
      case PlatformErrorCodes.GroupRelationshipNotFound:
        return 639;
      case PlatformErrorCodes.GroupAlreadyAllied:
        return 641;
      case PlatformErrorCodes.GroupAlreadyMember:
        return 642;
      case PlatformErrorCodes.GroupRelationshipAlreadyExists:
        return 643;
      case PlatformErrorCodes.InvalidGroupTypesForRelationshipRequest:
        return 644;
      case PlatformErrorCodes.GroupAtMaximumAlliances:
        return 646;
      case PlatformErrorCodes.GroupCannotSetClanOnlySettings:
        return 647;
      case PlatformErrorCodes.ClanCannotSetTwoDefaultPostTypes:
        return 648;
      case PlatformErrorCodes.GroupMemberInvalidMemberType:
        return 649;
      case PlatformErrorCodes.GroupInvalidPlatformType:
        return 650;
      case PlatformErrorCodes.GroupMemberInvalidSort:
        return 651;
      case PlatformErrorCodes.GroupInvalidResolveState:
        return 652;
      case PlatformErrorCodes.ClanAlreadyEnabledForPlatform:
        return 653;
      case PlatformErrorCodes.ClanNotEnabledForPlatform:
        return 654;
      case PlatformErrorCodes.ClanEnabledButCouldNotJoinNoAccount:
        return 655;
      case PlatformErrorCodes.ClanEnabledButCouldNotJoinAlreadyMember:
        return 656;
      case PlatformErrorCodes.ClanCannotJoinNoCredential:
        return 657;
      case PlatformErrorCodes.NoClanMembershipForPlatform:
        return 658;
      case PlatformErrorCodes.GroupToGroupFollowLimitReached:
        return 659;
      case PlatformErrorCodes.ChildGroupAlreadyInAlliance:
        return 660;
      case PlatformErrorCodes.OwnerGroupAlreadyInAlliance:
        return 661;
      case PlatformErrorCodes.AllianceOwnerCannotJoinAlliance:
        return 662;
      case PlatformErrorCodes.GroupNotInAlliance:
        return 663;
      case PlatformErrorCodes.ChildGroupCannotInviteToAlliance:
        return 664;
      case PlatformErrorCodes.GroupToGroupAlreadyFollowed:
        return 665;
      case PlatformErrorCodes.GroupToGroupNotFollowing:
        return 666;
      case PlatformErrorCodes.ClanMaximumMembershipReached:
        return 667;
      case PlatformErrorCodes.ClanNameNotValid:
        return 668;
      case PlatformErrorCodes.ClanNameNotValidError:
        return 669;
      case PlatformErrorCodes.AllianceOwnerNotDefined:
        return 670;
      case PlatformErrorCodes.AllianceChildNotDefined:
        return 671;
      case PlatformErrorCodes.ClanCultureIllegalCharacters:
        return 672;
      case PlatformErrorCodes.ClanTagIllegalCharacters:
        return 673;
      case PlatformErrorCodes.ClanRequiresInvitation:
        return 674;
      case PlatformErrorCodes.ClanMembershipClosed:
        return 675;
      case PlatformErrorCodes.ClanInviteAlreadyMember:
        return 676;
      case PlatformErrorCodes.GroupInviteAlreadyMember:
        return 677;
      case PlatformErrorCodes.GroupJoinApprovalRequired:
        return 678;
      case PlatformErrorCodes.ClanTagRequired:
        return 679;
      case PlatformErrorCodes.GroupNameCannotStartOrEndWithWhiteSpace:
        return 680;
      case PlatformErrorCodes.ClanCallsignCannotStartOrEndWithWhiteSpace:
        return 681;
      case PlatformErrorCodes.ClanMigrationFailed:
        return 682;
      case PlatformErrorCodes.ClanNotEnabledAlreadyMemberOfAnotherClan:
        return 683;
      case PlatformErrorCodes.GroupModerationNotPermittedOnNonMembers:
        return 684;
      case PlatformErrorCodes.ClanCreationInWorldServerFailed:
        return 685;
      case PlatformErrorCodes.ClanNotFound:
        return 686;
      case PlatformErrorCodes.ClanMembershipLevelDoesNotPermitThatAction:
        return 687;
      case PlatformErrorCodes.ClanMemberNotFound:
        return 688;
      case PlatformErrorCodes.ClanMissingMembershipApprovers:
        return 689;
      case PlatformErrorCodes.ClanInWrongStateForRequestedAction:
        return 690;
      case PlatformErrorCodes.ClanNameAlreadyUsed:
        return 691;
      case PlatformErrorCodes.ClanTooFewMembers:
        return 692;
      case PlatformErrorCodes.ClanInfoCannotBeWhitespace:
        return 693;
      case PlatformErrorCodes.GroupCultureThrottle:
        return 694;
      case PlatformErrorCodes.ClanTargetDisallowsInvites:
        return 695;
      case PlatformErrorCodes.ClanInvalidOperation:
        return 696;
      case PlatformErrorCodes.ClanFounderCannotLeaveWithoutAbdication:
        return 697;
      case PlatformErrorCodes.ClanNameReserved:
        return 698;
      case PlatformErrorCodes.ClanApplicantInClanSoNowInvited:
        return 699;
      case PlatformErrorCodes.ActivitiesUnknownException:
        return 701;
      case PlatformErrorCodes.ActivitiesParameterNull:
        return 702;
      case PlatformErrorCodes.ActivityCountsDiabled:
        return 703;
      case PlatformErrorCodes.ActivitySearchInvalidParameters:
        return 704;
      case PlatformErrorCodes.ActivityPermissionDenied:
        return 705;
      case PlatformErrorCodes.ShareAlreadyShared:
        return 706;
      case PlatformErrorCodes.ActivityLoggingDisabled:
        return 707;
      case PlatformErrorCodes.ClanRequiresExistingDestinyAccount:
        return 750;
      case PlatformErrorCodes.ClanNameRestricted:
        return 751;
      case PlatformErrorCodes.ClanCreationBan:
        return 752;
      case PlatformErrorCodes.ItemAlreadyFollowed:
        return 801;
      case PlatformErrorCodes.ItemNotFollowed:
        return 802;
      case PlatformErrorCodes.CannotFollowSelf:
        return 803;
      case PlatformErrorCodes.GroupFollowLimitExceeded:
        return 804;
      case PlatformErrorCodes.TagFollowLimitExceeded:
        return 805;
      case PlatformErrorCodes.UserFollowLimitExceeded:
        return 806;
      case PlatformErrorCodes.FollowUnsupportedEntityType:
        return 807;
      case PlatformErrorCodes.NoValidTagsInList:
        return 900;
      case PlatformErrorCodes.BelowMinimumSuggestionLength:
        return 901;
      case PlatformErrorCodes.CannotGetSuggestionsOnMultipleTagsSimultaneously:
        return 902;
      case PlatformErrorCodes.NotAValidPartialTag:
        return 903;
      case PlatformErrorCodes.TagSuggestionsUnknownSqlResult:
        return 904;
      case PlatformErrorCodes.TagsUnableToLoadPopularTagsFromDatabase:
        return 905;
      case PlatformErrorCodes.TagInvalid:
        return 906;
      case PlatformErrorCodes.TagNotFound:
        return 907;
      case PlatformErrorCodes.SingleTagExpected:
        return 908;
      case PlatformErrorCodes.TagsExceededMaximumPerItem:
        return 909;
      case PlatformErrorCodes.IgnoreInvalidParameters:
        return 1000;
      case PlatformErrorCodes.IgnoreSqlException:
        return 1001;
      case PlatformErrorCodes.IgnoreErrorRetrievingGroupPermissions:
        return 1002;
      case PlatformErrorCodes.IgnoreErrorInsufficientPermission:
        return 1003;
      case PlatformErrorCodes.IgnoreErrorRetrievingItem:
        return 1004;
      case PlatformErrorCodes.IgnoreCannotIgnoreSelf:
        return 1005;
      case PlatformErrorCodes.IgnoreIllegalType:
        return 1006;
      case PlatformErrorCodes.IgnoreNotFound:
        return 1007;
      case PlatformErrorCodes.IgnoreUserGloballyIgnored:
        return 1008;
      case PlatformErrorCodes.IgnoreUserIgnored:
        return 1009;
      case PlatformErrorCodes.NotificationSettingInvalid:
        return 1100;
      case PlatformErrorCodes.PsnApiExpiredAccessToken:
        return 1204;
      case PlatformErrorCodes.PSNExForbidden:
        return 1205;
      case PlatformErrorCodes.PSNExSystemDisabled:
        return 1218;
      case PlatformErrorCodes.PsnApiErrorCodeUnknown:
        return 1223;
      case PlatformErrorCodes.PsnApiErrorWebException:
        return 1224;
      case PlatformErrorCodes.PsnApiBadRequest:
        return 1225;
      case PlatformErrorCodes.PsnApiAccessTokenRequired:
        return 1226;
      case PlatformErrorCodes.PsnApiInvalidAccessToken:
        return 1227;
      case PlatformErrorCodes.PsnApiBannedUser:
        return 1229;
      case PlatformErrorCodes.PsnApiAccountUpgradeRequired:
        return 1230;
      case PlatformErrorCodes.PsnApiServiceTemporarilyUnavailable:
        return 1231;
      case PlatformErrorCodes.PsnApiServerBusy:
        return 1232;
      case PlatformErrorCodes.PsnApiUnderMaintenance:
        return 1233;
      case PlatformErrorCodes.PsnApiProfileUserNotFound:
        return 1234;
      case PlatformErrorCodes.PsnApiProfilePrivacyRestriction:
        return 1235;
      case PlatformErrorCodes.PsnApiProfileUnderMaintenance:
        return 1236;
      case PlatformErrorCodes.PsnApiAccountAttributeMissing:
        return 1237;
      case PlatformErrorCodes.PsnApiNoPermission:
        return 1238;
      case PlatformErrorCodes.PsnApiTargetUserBlocked:
        return 1239;
      case PlatformErrorCodes.PsnApiJwksMissing:
        return 1240;
      case PlatformErrorCodes.PsnApiJwtMalformedHeader:
        return 1241;
      case PlatformErrorCodes.PsnApiJwtMalformedPayload:
        return 1242;
      case PlatformErrorCodes.XblExSystemDisabled:
        return 1300;
      case PlatformErrorCodes.XblExUnknownError:
        return 1301;
      case PlatformErrorCodes.XblApiErrorWebException:
        return 1302;
      case PlatformErrorCodes.XblStsTokenInvalid:
        return 1303;
      case PlatformErrorCodes.XblStsMissingToken:
        return 1304;
      case PlatformErrorCodes.XblStsExpiredToken:
        return 1305;
      case PlatformErrorCodes.XblAccessToTheSandboxDenied:
        return 1306;
      case PlatformErrorCodes.XblMsaResponseMissing:
        return 1307;
      case PlatformErrorCodes.XblMsaAccessTokenExpired:
        return 1308;
      case PlatformErrorCodes.XblMsaInvalidRequest:
        return 1309;
      case PlatformErrorCodes.XblMsaFriendsRequireSignIn:
        return 1310;
      case PlatformErrorCodes.XblUserActionRequired:
        return 1311;
      case PlatformErrorCodes.XblParentalControls:
        return 1312;
      case PlatformErrorCodes.XblDeveloperAccount:
        return 1313;
      case PlatformErrorCodes.XblUserTokenExpired:
        return 1314;
      case PlatformErrorCodes.XblUserTokenInvalid:
        return 1315;
      case PlatformErrorCodes.XblOffline:
        return 1316;
      case PlatformErrorCodes.XblUnknownErrorCode:
        return 1317;
      case PlatformErrorCodes.XblMsaInvalidGrant:
        return 1318;
      case PlatformErrorCodes.ReportNotYetResolved:
        return 1400;
      case PlatformErrorCodes.ReportOverturnDoesNotChangeDecision:
        return 1401;
      case PlatformErrorCodes.ReportNotFound:
        return 1402;
      case PlatformErrorCodes.ReportAlreadyReported:
        return 1403;
      case PlatformErrorCodes.ReportInvalidResolution:
        return 1404;
      case PlatformErrorCodes.ReportNotAssignedToYou:
        return 1405;
      case PlatformErrorCodes.LegacyGameStatsSystemDisabled:
        return 1500;
      case PlatformErrorCodes.LegacyGameStatsUnknownError:
        return 1501;
      case PlatformErrorCodes.LegacyGameStatsMalformedSneakerNetCode:
        return 1502;
      case PlatformErrorCodes.DestinyAccountAcquisitionFailure:
        return 1600;
      case PlatformErrorCodes.DestinyAccountNotFound:
        return 1601;
      case PlatformErrorCodes.DestinyBuildStatsDatabaseError:
        return 1602;
      case PlatformErrorCodes.DestinyCharacterStatsDatabaseError:
        return 1603;
      case PlatformErrorCodes.DestinyPvPStatsDatabaseError:
        return 1604;
      case PlatformErrorCodes.DestinyPvEStatsDatabaseError:
        return 1605;
      case PlatformErrorCodes.DestinyGrimoireStatsDatabaseError:
        return 1606;
      case PlatformErrorCodes.DestinyStatsParameterMembershipTypeParseError:
        return 1607;
      case PlatformErrorCodes.DestinyStatsParameterMembershipIdParseError:
        return 1608;
      case PlatformErrorCodes.DestinyStatsParameterRangeParseError:
        return 1609;
      case PlatformErrorCodes.DestinyStringItemHashNotFound:
        return 1610;
      case PlatformErrorCodes.DestinyStringSetNotFound:
        return 1611;
      case PlatformErrorCodes.DestinyContentLookupNotFoundForKey:
        return 1612;
      case PlatformErrorCodes.DestinyContentItemNotFound:
        return 1613;
      case PlatformErrorCodes.DestinyContentSectionNotFound:
        return 1614;
      case PlatformErrorCodes.DestinyContentPropertyNotFound:
        return 1615;
      case PlatformErrorCodes.DestinyContentConfigNotFound:
        return 1616;
      case PlatformErrorCodes.DestinyContentPropertyBucketValueNotFound:
        return 1617;
      case PlatformErrorCodes.DestinyUnexpectedError:
        return 1618;
      case PlatformErrorCodes.DestinyInvalidAction:
        return 1619;
      case PlatformErrorCodes.DestinyCharacterNotFound:
        return 1620;
      case PlatformErrorCodes.DestinyInvalidFlag:
        return 1621;
      case PlatformErrorCodes.DestinyInvalidRequest:
        return 1622;
      case PlatformErrorCodes.DestinyItemNotFound:
        return 1623;
      case PlatformErrorCodes.DestinyInvalidCustomizationChoices:
        return 1624;
      case PlatformErrorCodes.DestinyVendorItemNotFound:
        return 1625;
      case PlatformErrorCodes.DestinyInternalError:
        return 1626;
      case PlatformErrorCodes.DestinyVendorNotFound:
        return 1627;
      case PlatformErrorCodes.DestinyRecentActivitiesDatabaseError:
        return 1628;
      case PlatformErrorCodes.DestinyItemBucketNotFound:
        return 1629;
      case PlatformErrorCodes.DestinyInvalidMembershipType:
        return 1630;
      case PlatformErrorCodes.DestinyVersionIncompatibility:
        return 1631;
      case PlatformErrorCodes.DestinyItemAlreadyInInventory:
        return 1632;
      case PlatformErrorCodes.DestinyBucketNotFound:
        return 1633;
      case PlatformErrorCodes.DestinyCharacterNotInTower:
        return 1634;
      case PlatformErrorCodes.DestinyCharacterNotLoggedIn:
        return 1635;
      case PlatformErrorCodes.DestinyDefinitionsNotLoaded:
        return 1636;
      case PlatformErrorCodes.DestinyInventoryFull:
        return 1637;
      case PlatformErrorCodes.DestinyItemFailedLevelCheck:
        return 1638;
      case PlatformErrorCodes.DestinyItemFailedUnlockCheck:
        return 1639;
      case PlatformErrorCodes.DestinyItemUnequippable:
        return 1640;
      case PlatformErrorCodes.DestinyItemUniqueEquipRestricted:
        return 1641;
      case PlatformErrorCodes.DestinyNoRoomInDestination:
        return 1642;
      case PlatformErrorCodes.DestinyServiceFailure:
        return 1643;
      case PlatformErrorCodes.DestinyServiceRetired:
        return 1644;
      case PlatformErrorCodes.DestinyTransferFailed:
        return 1645;
      case PlatformErrorCodes.DestinyTransferNotFoundForSourceBucket:
        return 1646;
      case PlatformErrorCodes.DestinyUnexpectedResultInVendorTransferCheck:
        return 1647;
      case PlatformErrorCodes.DestinyUniquenessViolation:
        return 1648;
      case PlatformErrorCodes.DestinyErrorDeserializationFailure:
        return 1649;
      case PlatformErrorCodes.DestinyValidAccountTicketRequired:
        return 1650;
      case PlatformErrorCodes.DestinyShardRelayClientTimeout:
        return 1651;
      case PlatformErrorCodes.DestinyShardRelayProxyTimeout:
        return 1652;
      case PlatformErrorCodes.DestinyPGCRNotFound:
        return 1653;
      case PlatformErrorCodes.DestinyAccountMustBeOffline:
        return 1654;
      case PlatformErrorCodes.DestinyCanOnlyEquipInGame:
        return 1655;
      case PlatformErrorCodes.DestinyCannotPerformActionOnEquippedItem:
        return 1656;
      case PlatformErrorCodes.DestinyQuestAlreadyCompleted:
        return 1657;
      case PlatformErrorCodes.DestinyQuestAlreadyTracked:
        return 1658;
      case PlatformErrorCodes.DestinyTrackableQuestsFull:
        return 1659;
      case PlatformErrorCodes.DestinyItemNotTransferrable:
        return 1660;
      case PlatformErrorCodes.DestinyVendorPurchaseNotAllowed:
        return 1661;
      case PlatformErrorCodes.DestinyContentVersionMismatch:
        return 1662;
      case PlatformErrorCodes.DestinyItemActionForbidden:
        return 1663;
      case PlatformErrorCodes.DestinyRefundInvalid:
        return 1664;
      case PlatformErrorCodes.DestinyPrivacyRestriction:
        return 1665;
      case PlatformErrorCodes.DestinyActionInsufficientPrivileges:
        return 1666;
      case PlatformErrorCodes.DestinyInvalidClaimException:
        return 1667;
      case PlatformErrorCodes.DestinyLegacyPlatformRestricted:
        return 1668;
      case PlatformErrorCodes.DestinyLegacyPlatformInUse:
        return 1669;
      case PlatformErrorCodes.DestinyLegacyPlatformInaccessible:
        return 1670;
      case PlatformErrorCodes.DestinyCannotPerformActionAtThisLocation:
        return 1671;
      case PlatformErrorCodes.DestinyThrottledByGameServer:
        return 1672;
      case PlatformErrorCodes.DestinyItemNotTransferrableHasSideEffects:
        return 1673;
      case PlatformErrorCodes.DestinyItemLocked:
        return 1674;
      case PlatformErrorCodes.DestinyCannotAffordMaterialRequirements:
        return 1675;
      case PlatformErrorCodes.DestinyFailedPlugInsertionRules:
        return 1676;
      case PlatformErrorCodes.DestinySocketNotFound:
        return 1677;
      case PlatformErrorCodes.DestinySocketActionNotAllowed:
        return 1678;
      case PlatformErrorCodes.DestinySocketAlreadyHasPlug:
        return 1679;
      case PlatformErrorCodes.DestinyPlugItemNotAvailable:
        return 1680;
      case PlatformErrorCodes.DestinyCharacterLoggedInNotAllowed:
        return 1681;
      case PlatformErrorCodes.DestinyPublicAccountNotAccessible:
        return 1682;
      case PlatformErrorCodes.DestinyClaimsItemAlreadyClaimed:
        return 1683;
      case PlatformErrorCodes.DestinyClaimsNoInventorySpace:
        return 1684;
      case PlatformErrorCodes.DestinyClaimsRequiredLevelNotMet:
        return 1685;
      case PlatformErrorCodes.DestinyClaimsInvalidState:
        return 1686;
      case PlatformErrorCodes.DestinyNotEnoughRoomForMultipleRewards:
        return 1687;
      case PlatformErrorCodes.DestinyDirectBabelClientTimeout:
        return 1688;
      case PlatformErrorCodes.FbInvalidRequest:
        return 1800;
      case PlatformErrorCodes.FbRedirectMismatch:
        return 1801;
      case PlatformErrorCodes.FbAccessDenied:
        return 1802;
      case PlatformErrorCodes.FbUnsupportedResponseType:
        return 1803;
      case PlatformErrorCodes.FbInvalidScope:
        return 1804;
      case PlatformErrorCodes.FbUnsupportedGrantType:
        return 1805;
      case PlatformErrorCodes.FbInvalidGrant:
        return 1806;
      case PlatformErrorCodes.InvitationExpired:
        return 1900;
      case PlatformErrorCodes.InvitationUnknownType:
        return 1901;
      case PlatformErrorCodes.InvitationInvalidResponseStatus:
        return 1902;
      case PlatformErrorCodes.InvitationInvalidType:
        return 1903;
      case PlatformErrorCodes.InvitationAlreadyPending:
        return 1904;
      case PlatformErrorCodes.InvitationInsufficientPermission:
        return 1905;
      case PlatformErrorCodes.InvitationInvalidCode:
        return 1906;
      case PlatformErrorCodes.InvitationInvalidTargetState:
        return 1907;
      case PlatformErrorCodes.InvitationCannotBeReactivated:
        return 1908;
      case PlatformErrorCodes.InvitationNoRecipients:
        return 1910;
      case PlatformErrorCodes.InvitationGroupCannotSendToSelf:
        return 1911;
      case PlatformErrorCodes.InvitationTooManyRecipients:
        return 1912;
      case PlatformErrorCodes.InvitationInvalid:
        return 1913;
      case PlatformErrorCodes.InvitationNotFound:
        return 1914;
      case PlatformErrorCodes.TokenInvalid:
        return 2000;
      case PlatformErrorCodes.TokenBadFormat:
        return 2001;
      case PlatformErrorCodes.TokenAlreadyClaimed:
        return 2002;
      case PlatformErrorCodes.TokenAlreadyClaimedSelf:
        return 2003;
      case PlatformErrorCodes.TokenThrottling:
        return 2004;
      case PlatformErrorCodes.TokenUnknownRedemptionFailure:
        return 2005;
      case PlatformErrorCodes.TokenPurchaseClaimFailedAfterTokenClaimed:
        return 2006;
      case PlatformErrorCodes.TokenUserAlreadyOwnsOffer:
        return 2007;
      case PlatformErrorCodes.TokenInvalidOfferKey:
        return 2008;
      case PlatformErrorCodes.TokenEmailNotValidated:
        return 2009;
      case PlatformErrorCodes.TokenProvisioningBadVendorOrOffer:
        return 2010;
      case PlatformErrorCodes.TokenPurchaseHistoryUnknownError:
        return 2011;
      case PlatformErrorCodes.TokenThrottleStateUnknownError:
        return 2012;
      case PlatformErrorCodes.TokenUserAgeNotVerified:
        return 2013;
      case PlatformErrorCodes.TokenExceededOfferMaximum:
        return 2014;
      case PlatformErrorCodes.TokenNoAvailableUnlocks:
        return 2015;
      case PlatformErrorCodes.TokenMarketplaceInvalidPlatform:
        return 2016;
      case PlatformErrorCodes.TokenNoMarketplaceCodesFound:
        return 2017;
      case PlatformErrorCodes.TokenOfferNotAvailableForRedemption:
        return 2018;
      case PlatformErrorCodes.TokenUnlockPartialFailure:
        return 2019;
      case PlatformErrorCodes.TokenMarketplaceInvalidRegion:
        return 2020;
      case PlatformErrorCodes.TokenOfferExpired:
        return 2021;
      case PlatformErrorCodes.RAFExceededMaximumReferrals:
        return 2022;
      case PlatformErrorCodes.RAFDuplicateBond:
        return 2023;
      case PlatformErrorCodes.RAFNoValidVeteranDestinyMembershipsFound:
        return 2024;
      case PlatformErrorCodes.RAFNotAValidVeteranUser:
        return 2025;
      case PlatformErrorCodes.RAFCodeAlreadyClaimedOrNotFound:
        return 2026;
      case PlatformErrorCodes.RAFMismatchedDestinyMembershipType:
        return 2027;
      case PlatformErrorCodes.RAFUnableToAccessPurchaseHistory:
        return 2028;
      case PlatformErrorCodes.RAFUnableToCreateBond:
        return 2029;
      case PlatformErrorCodes.RAFUnableToFindBond:
        return 2030;
      case PlatformErrorCodes.RAFUnableToRemoveBond:
        return 2031;
      case PlatformErrorCodes.RAFCannotBondToSelf:
        return 2032;
      case PlatformErrorCodes.RAFInvalidPlatform:
        return 2033;
      case PlatformErrorCodes.RAFGenerateThrottled:
        return 2034;
      case PlatformErrorCodes.RAFUnableToCreateBondVersionMismatch:
        return 2035;
      case PlatformErrorCodes.RAFUnableToRemoveBondVersionMismatch:
        return 2036;
      case PlatformErrorCodes.RAFRedeemThrottled:
        return 2037;
      case PlatformErrorCodes.NoAvailableDiscountCode:
        return 2038;
      case PlatformErrorCodes.DiscountAlreadyClaimed:
        return 2039;
      case PlatformErrorCodes.DiscountClaimFailure:
        return 2040;
      case PlatformErrorCodes.DiscountConfigurationFailure:
        return 2041;
      case PlatformErrorCodes.DiscountGenerationFailure:
        return 2042;
      case PlatformErrorCodes.DiscountAlreadyExists:
        return 2043;
      case PlatformErrorCodes.TokenRequiresCredentialXuid:
        return 2044;
      case PlatformErrorCodes.TokenRequiresCredentialPsnid:
        return 2045;
      case PlatformErrorCodes.OfferRequired:
        return 2046;
      case PlatformErrorCodes.UnknownEververseHistoryError:
        return 2047;
      case PlatformErrorCodes.MissingEververseHistoryError:
        return 2048;
      case PlatformErrorCodes.BungieRewardEmailStateInvalid:
        return 2049;
      case PlatformErrorCodes.BungieRewardNotYetClaimable:
        return 2050;
      case PlatformErrorCodes.MissingOfferConfig:
        return 2051;
      case PlatformErrorCodes.RAFQuestEntitlementRequiresBnet:
        return 2052;
      case PlatformErrorCodes.RAFQuestEntitlementTransportFailure:
        return 2053;
      case PlatformErrorCodes.RAFQuestEntitlementUnknownFailure:
        return 2054;
      case PlatformErrorCodes.RAFVeteranRewardUnknownFailure:
        return 2055;
      case PlatformErrorCodes.RAFTooEarlyToCancelBond:
        return 2056;
      case PlatformErrorCodes.LoyaltyRewardAlreadyRedeemed:
        return 2057;
      case PlatformErrorCodes.UnclaimedLoyaltyRewardEntryNotFound:
        return 2058;
      case PlatformErrorCodes.PartnerOfferPartialFailure:
        return 2059;
      case PlatformErrorCodes.PartnerOfferAlreadyClaimed:
        return 2060;
      case PlatformErrorCodes.PartnerOfferSkuNotFound:
        return 2061;
      case PlatformErrorCodes.PartnerOfferSkuExpired:
        return 2062;
      case PlatformErrorCodes.PartnerOfferPermissionFailure:
        return 2063;
      case PlatformErrorCodes.PartnerOfferNoDestinyAccount:
        return 2064;
      case PlatformErrorCodes.PartnerOfferApplyDataNotFound:
        return 2065;
      case PlatformErrorCodes.ApiExceededMaxKeys:
        return 2100;
      case PlatformErrorCodes.ApiInvalidOrExpiredKey:
        return 2101;
      case PlatformErrorCodes.ApiKeyMissingFromRequest:
        return 2102;
      case PlatformErrorCodes.ApplicationDisabled:
        return 2103;
      case PlatformErrorCodes.ApplicationExceededMax:
        return 2104;
      case PlatformErrorCodes.ApplicationDisallowedByScope:
        return 2105;
      case PlatformErrorCodes.AuthorizationCodeInvalid:
        return 2106;
      case PlatformErrorCodes.OriginHeaderDoesNotMatchKey:
        return 2107;
      case PlatformErrorCodes.AccessNotPermittedByApplicationScope:
        return 2108;
      case PlatformErrorCodes.ApplicationNameIsTaken:
        return 2109;
      case PlatformErrorCodes.RefreshTokenNotYetValid:
        return 2110;
      case PlatformErrorCodes.AccessTokenHasExpired:
        return 2111;
      case PlatformErrorCodes.ApplicationTokenFormatNotValid:
        return 2112;
      case PlatformErrorCodes.ApplicationNotConfiguredForBungieAuth:
        return 2113;
      case PlatformErrorCodes.ApplicationNotConfiguredForOAuth:
        return 2114;
      case PlatformErrorCodes.OAuthAccessTokenExpired:
        return 2115;
      case PlatformErrorCodes.ApplicationTokenKeyIdDoesNotExist:
        return 2116;
      case PlatformErrorCodes.ProvidedTokenNotValidRefreshToken:
        return 2117;
      case PlatformErrorCodes.RefreshTokenExpired:
        return 2118;
      case PlatformErrorCodes.AuthorizationRecordInvalid:
        return 2119;
      case PlatformErrorCodes.TokenPreviouslyRevoked:
        return 2120;
      case PlatformErrorCodes.TokenInvalidMembership:
        return 2121;
      case PlatformErrorCodes.AuthorizationCodeStale:
        return 2122;
      case PlatformErrorCodes.AuthorizationRecordExpired:
        return 2123;
      case PlatformErrorCodes.AuthorizationRecordRevoked:
        return 2124;
      case PlatformErrorCodes.AuthorizationRecordInactiveApiKey:
        return 2125;
      case PlatformErrorCodes.AuthorizationRecordApiKeyMatching:
        return 2126;
      case PlatformErrorCodes.PartnershipInvalidType:
        return 2200;
      case PlatformErrorCodes.PartnershipValidationError:
        return 2201;
      case PlatformErrorCodes.PartnershipValidationTimeout:
        return 2202;
      case PlatformErrorCodes.PartnershipAccessFailure:
        return 2203;
      case PlatformErrorCodes.PartnershipAccountInvalid:
        return 2204;
      case PlatformErrorCodes.PartnershipGetAccountInfoFailure:
        return 2205;
      case PlatformErrorCodes.PartnershipDisabled:
        return 2206;
      case PlatformErrorCodes.PartnershipAlreadyExists:
        return 2207;
      case PlatformErrorCodes.CommunityStreamingUnavailable:
        return 2300;
      case PlatformErrorCodes.TwitchNotLinked:
        return 2500;
      case PlatformErrorCodes.TwitchAccountNotFound:
        return 2501;
      case PlatformErrorCodes.TwitchCouldNotLoadDestinyInfo:
        return 2502;
      case PlatformErrorCodes.TwitchCouldNotRegisterUser:
        return 2503;
      case PlatformErrorCodes.TwitchCouldNotUnregisterUser:
        return 2504;
      case PlatformErrorCodes.TwitchRequiresRelinking:
        return 2505;
      case PlatformErrorCodes.TwitchNoPlatformChosen:
        return 2506;
      case PlatformErrorCodes.TrendingCategoryNotFound:
        return 2600;
      case PlatformErrorCodes.TrendingEntryTypeNotSupported:
        return 2601;
      case PlatformErrorCodes.ReportOffenderNotInPgcr:
        return 2700;
      case PlatformErrorCodes.ReportRequestorNotInPgcr:
        return 2701;
      case PlatformErrorCodes.ReportSubmissionFailed:
        return 2702;
      case PlatformErrorCodes.ReportCannotReportSelf:
        return 2703;
      case PlatformErrorCodes.AwaTypeDisabled:
        return 2800;
      case PlatformErrorCodes.AwaTooManyPendingRequests:
        return 2801;
      case PlatformErrorCodes.AwaTheFeatureRequiresARegisteredDevice:
        return 2802;
      case PlatformErrorCodes.AwaRequestWasUnansweredForTooLong:
        return 2803;
      case PlatformErrorCodes.AwaWriteRequestMissingOrInvalidToken:
        return 2804;
      case PlatformErrorCodes.AwaWriteRequestTokenExpired:
        return 2805;
      case PlatformErrorCodes.AwaWriteRequestTokenUsageLimitReached:
        return 2806;
      case PlatformErrorCodes.SteamWebApiError:
        return 2900;
      case PlatformErrorCodes.SteamWebNullResponseError:
        return 2901;
      case PlatformErrorCodes.ClanFireteamNotFound:
        return 3000;
      case PlatformErrorCodes.ClanFireteamAddNoAlternatesForImmediate:
        return 3001;
      case PlatformErrorCodes.ClanFireteamFull:
        return 3002;
      case PlatformErrorCodes.ClanFireteamAltFull:
        return 3003;
      case PlatformErrorCodes.ClanFireteamBlocked:
        return 3004;
      case PlatformErrorCodes.ClanFireteamPlayerEntryNotFound:
        return 3005;
      case PlatformErrorCodes.ClanFireteamPermissions:
        return 3006;
      case PlatformErrorCodes.ClanFireteamInvalidPlatform:
        return 3007;
      case PlatformErrorCodes.ClanFireteamCannotAdjustSlotCount:
        return 3008;
      case PlatformErrorCodes.ClanFireteamInvalidPlayerPlatform:
        return 3009;
      case PlatformErrorCodes.ClanFireteamNotReadyForInvitesNotEnoughPlayers:
        return 3010;
      case PlatformErrorCodes.ClanFireteamGameInvitesNotSupportForPlatform:
        return 3011;
      case PlatformErrorCodes.ClanFireteamPlatformInvitePreqFailure:
        return 3012;
      case PlatformErrorCodes.ClanFireteamInvalidAuthContext:
        return 3013;
      case PlatformErrorCodes.ClanFireteamInvalidAuthProviderPsn:
        return 3014;
      case PlatformErrorCodes.ClanFireteamPs4SessionFull:
        return 3015;
      case PlatformErrorCodes.ClanFireteamInvalidAuthToken:
        return 3016;
      case PlatformErrorCodes.ClanFireteamScheduledFireteamsDisabled:
        return 3017;
      case PlatformErrorCodes.ClanFireteamNotReadyForInvitesNotScheduledYet:
        return 3018;
      case PlatformErrorCodes.ClanFireteamNotReadyForInvitesClosed:
        return 3019;
      case PlatformErrorCodes.ClanFireteamScheduledFireteamsRequireAdminPermissions:
        return 3020;
      case PlatformErrorCodes.ClanFireteamNonPublicMustHaveClan:
        return 3021;
      case PlatformErrorCodes.ClanFireteamPublicCreationRestriction:
        return 3022;
      case PlatformErrorCodes.ClanFireteamAlreadyJoined:
        return 3023;
      case PlatformErrorCodes.ClanFireteamScheduledFireteamsRange:
        return 3024;
      case PlatformErrorCodes.ClanFireteamPublicCreationRestrictionExtended:
        return 3025;
      case PlatformErrorCodes.ClanFireteamExpired:
        return 3026;
      case PlatformErrorCodes.ClanFireteamInvalidAuthProvider:
        return 3027;
      case PlatformErrorCodes.ClanFireteamInvalidAuthProviderXuid:
        return 3028;
      case PlatformErrorCodes.CrossSaveOverriddenAccountNotFound:
        return 3200;
      case PlatformErrorCodes.CrossSaveTooManyOverriddenPlatforms:
        return 3201;
      case PlatformErrorCodes.CrossSaveNoOverriddenPlatforms:
        return 3202;
      case PlatformErrorCodes.CrossSavePrimaryAccountNotFound:
        return 3203;
      case PlatformErrorCodes.CrossSaveRequestInvalid:
        return 3204;
      case PlatformErrorCodes.CrossSaveBungieAccountValidationFailure:
        return 3206;
      case PlatformErrorCodes.CrossSaveOverriddenPlatformNotAllowed:
        return 3207;
      case PlatformErrorCodes.CrossSaveThresholdExceeded:
        return 3208;
      case PlatformErrorCodes.CrossSaveIncompatibleMembershipType:
        return 3209;
      case PlatformErrorCodes.CrossSaveCouldNotFindLinkedAccountForMembershipType:
        return 3210;
      case PlatformErrorCodes.CrossSaveCouldNotCreateDestinyProfileForMembershipType:
        return 3211;
      case PlatformErrorCodes.CrossSaveErrorCreatingDestinyProfileForMembershipType:
        return 3212;
      case PlatformErrorCodes.CrossSaveCannotOverrideSelf:
        return 3213;
      case PlatformErrorCodes.CrossSaveRecentSilverPurchase:
        return 3214;
      case PlatformErrorCodes.CrossSaveSilverBalanceNegative:
        return 3215;
      case PlatformErrorCodes.CrossSaveAccountNotAuthenticated:
        return 3216;
      case PlatformErrorCodes.ErrorOneAccountAlreadyActive:
        return 3217;
      case PlatformErrorCodes.ErrorOneAccountDestinyRestriction:
        return 3218;
      case PlatformErrorCodes.CrossSaveMustMigrateToSteam:
        return 3219;
      case PlatformErrorCodes.CrossSaveSteamAlreadyPaired:
        return 3220;
      case PlatformErrorCodes.CrossSaveCannotPairJustSteamAndBlizzard:
        return 3221;
      case PlatformErrorCodes.CrossSaveCannotPairSteamAloneBeforeShadowkeep:
        return 3222;
      case PlatformErrorCodes.AuthVerificationNotLinkedToAccount:
        return 3300;
      case PlatformErrorCodes.PCMigrationMissingBlizzard:
        return 3400;
      case PlatformErrorCodes.PCMigrationMissingSteam:
        return 3401;
      case PlatformErrorCodes.PCMigrationInvalidBlizzard:
        return 3402;
      case PlatformErrorCodes.PCMigrationInvalidSteam:
        return 3403;
      case PlatformErrorCodes.PCMigrationUnknownFailure:
        return 3404;
      case PlatformErrorCodes.PCMigrationUnknownException:
        return 3405;
      case PlatformErrorCodes.PCMigrationNotLinked:
        return 3406;
      case PlatformErrorCodes.PCMigrationAccountsAlreadyUsed:
        return 3407;
      case PlatformErrorCodes.PCMigrationStepFailed:
        return 3408;
      case PlatformErrorCodes.PCMigrationInvalidBlizzardCrossSaveState:
        return 3409;
      case PlatformErrorCodes.PCMigrationDestinationBanned:
        return 3410;
      case PlatformErrorCodes.PCMigrationDestinyFailure:
        return 3411;
      case PlatformErrorCodes.PCMigrationSilverTransferFailed:
        return 3412;
      case PlatformErrorCodes.PCMigrationEntitlementTransferFailed:
        return 3413;
      case PlatformErrorCodes.PCMigrationCannotStompClanFounder:
        return 3414;
      case PlatformErrorCodes.UnsupportedBrowser:
        return 3500;
      case PlatformErrorCodes.StadiaAccountRequired:
        return 3600;
      case PlatformErrorCodes.ErrorPhoneValidationTooManyUses:
        return 3702;
      case PlatformErrorCodes.ErrorPhoneValidationNoAssociatedPhone:
        return 3703;
      case PlatformErrorCodes.ErrorPhoneValidationCodeInvalid:
        return 3705;
      case PlatformErrorCodes.ErrorPhoneValidationBanned:
        return 3706;
      default:
        return null;
    }
  }
}