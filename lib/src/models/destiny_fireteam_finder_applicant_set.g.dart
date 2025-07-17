// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_applicant_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderApplicantSet _$DestinyFireteamFinderApplicantSetFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderApplicantSet()
      ..applicants =
          (json['applicants'] as List<dynamic>?)
              ?.map(
                (e) => DestinyFireteamFinderApplicant.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$DestinyFireteamFinderApplicantSetToJson(
  DestinyFireteamFinderApplicantSet instance,
) => <String, dynamic>{
  'applicants': instance.applicants?.map((e) => e.toJson()).toList(),
};
