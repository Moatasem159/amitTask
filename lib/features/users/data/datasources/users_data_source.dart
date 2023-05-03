import 'package:amit_task/core/api/api_consumer.dart';
import 'package:amit_task/features/users/data/models/user_model.dart';
abstract class UsersRemoteDataSource {
  Future<List<UserModel>> getAllUsers();
}
class UsersRemoteDataSourceImpl extends UsersRemoteDataSource {
  UsersRemoteDataSourceImpl({required this.apiConsumer});
  ApiConsumer apiConsumer;
  @override
  Future<List<UserModel>> getAllUsers() async {
    final response = await apiConsumer.get("users");
    return List<UserModel>.from((response as List).map((x) => UserModel.fromJson(x)));
  }
}