import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:match_once/infrastructure/model/firebase_timestamp.dart';

part 'room_model.freezed.dart';

part 'room_model.g.dart';

@freezed
abstract class RoomModel with _$RoomModel {
  const factory RoomModel({
    required final String roomId,
    required final String ownerUid,
    required final String partnerUid,
    required final String lastMessage,
    @CreatedAtField() DateTime? createdAt,
  }) = _RoomModel;

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);

  factory RoomModel.initialData() => RoomModel(
        roomId: '',
        ownerUid: '',
        partnerUid: '',
        lastMessage: '',
        createdAt: DateTime.now(),
      );

  factory RoomModel.fromMap(Map<String, dynamic> data) => RoomModel(
        roomId: data['roomId'],
        ownerUid: data['ownerUid'],
        partnerUid: data['partnerUid'],
        lastMessage: data['lastMessage'],
        createdAt: DateTime.parse(data['createdAt']),
      );
}
