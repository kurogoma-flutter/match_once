import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:match_once/infrastructure/model/firebase_timestamp.dart';

part 'chat_model.freezed.dart';

part 'chat_model.g.dart';

@freezed
abstract class ChatModel with _$ChatModel {
  const factory ChatModel({
    required final String chatId,
    required final String text,
    required final String imagePath,
    required final String roomId,
    @CreatedAtField() DateTime? createdAt,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);

  factory ChatModel.initialData() => ChatModel(
        chatId: '',
        text: '',
        imagePath: '',
        roomId: '',
        createdAt: DateTime.now(),
      );

  factory ChatModel.fromMap(Map<String, dynamic> data) => ChatModel(
        chatId: data['chatId'],
        text: data['text'],
        imagePath: data['imagePath'],
        roomId: data['roomId'],
        createdAt: DateTime.parse(data['createdAt']),
      );
}
