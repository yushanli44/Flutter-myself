// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'escalation_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EscalationList _$EscalationListFromJson(Map<String, dynamic> json) {
  return EscalationList(
      httpStatusCode: json['httpStatusCode'] as int,
      status: json['status'] as String,
      message: json['message'] as String,
      matchCount: json['matchCount'] as int,
      escalations: (json['escalations'] as List)
          ?.map((e) =>
              e == null ? null : Escalation.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$EscalationListToJson(EscalationList instance) =>
    <String, dynamic>{
      'httpStatusCode': instance.httpStatusCode,
      'status': instance.status,
      'message': instance.message,
      'matchCount': instance.matchCount,
      'escalations': instance.escalations
    };

Escalation _$EscalationFromJson(Map<String, dynamic> json) {
  return Escalation(
      escalationId: json['escalationId'] as int,
      receptHistId: json['receptHistId'] as int,
      aspId: json['aspId'] as int,
      reservePeriod: json['reservePeriod'] as String,
      address: json['address'] as String,
      escalationMsg: json['escalationMsg'] as String,
      escalationStatus: json['escalationStatus'] as String,
      openStatus: json['openStatus'] as int,
      availability: json['availability'] as int,
      assign: json['assign'] as int);
}

Map<String, dynamic> _$EscalationToJson(Escalation instance) =>
    <String, dynamic>{
      'escalationId': instance.escalationId,
      'receptHistId': instance.receptHistId,
      'aspId': instance.aspId,
      'reservePeriod': instance.reservePeriod,
      'address': instance.address,
      'escalationMsg': instance.escalationMsg,
      'escalationStatus': instance.escalationStatus,
      'openStatus': instance.openStatus,
      'availability': instance.availability,
      'assign': instance.assign
    };
