// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomModel _$$_RoomModelFromJson(Map<String, dynamic> json) => _$_RoomModel(
      roomId: json['roomId'] as String,
      ownerUid: json['ownerUid'] as String,
      partnerUid: json['partnerUid'] as String,
      lastMessage: json['lastMessage'] as String,
      createdAt: const CreatedAtField().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$_RoomModelToJson(_$_RoomModel instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'ownerUid': instance.ownerUid,
      'partnerUid': instance.partnerUid,
      'lastMessage': instance.lastMessage,
      'createdAt': const CreatedAtField().toJson(instance.createdAt),
    };
