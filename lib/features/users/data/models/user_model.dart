import 'package:amit_task/features/users/domain/entities/user.dart';
class UserModel extends User{
  UserModel({
    required super.id,
    required super.email,
    required super.password,
    required super.name,
    required super.role,
    required super.avatar,
    required super.creationAt,
    required super.updatedAt});
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json["id"],
    email: json["email"],
    password: json["password"],
    name: json["name"],
    role: json["role"],
    avatar: json["avatar"],
    creationAt: json["creationAt"],
    updatedAt: json["updatedAt"],
  );
}