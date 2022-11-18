import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:match_once/infrastructure/model/firebase_timestamp.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required final String userId,
    required final String userName,
    required final String email,
    required final String iconImagePath,
    required final String area,
    required final String introduction,
    required final String age,
    @CreatedAtField() DateTime? createdAt,
    @UpdatedAtField() DateTime? updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.initialData() => UserModel(
        userId: '',
        userName: '',
        email: '',
        iconImagePath: '',
        area: '',
        introduction: '',
        age: '',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

  factory UserModel.fromMap(Map<String, dynamic> data) => UserModel(
        userId: data['userId'],
        userName: data['userName'],
        email: data['email'],
        iconImagePath: data['iconImagePath'],
        area: data['area'],
        introduction: data['introduction'],
        age: data['age'],
        createdAt: DateTime.parse(data['createdAt']),
        updatedAt: DateTime.parse(data['updatedAt']),
      );
}
