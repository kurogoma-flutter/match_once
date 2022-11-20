// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatModel _$$_ChatModelFromJson(Map<String, dynamic> json) => _$_ChatModel(
      chatId: json['chatId'] as String,
      text: json['text'] as String,
      imagePath: json['imagePath'] as String,
      roomId: json['roomId'] as String,
      createdAt: const CreatedAtField().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$_ChatModelToJson(_$_ChatModel instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'text': instance.text,
      'imagePath': instance.imagePath,
      'roomId': instance.roomId,
      'createdAt': const CreatedAtField().toJson(instance.createdAt),
    };
