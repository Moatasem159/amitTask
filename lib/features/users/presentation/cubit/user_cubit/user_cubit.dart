import 'package:amit_task/features/users/data/datasources/users_data_source.dart';
import 'package:amit_task/features/users/domain/entities/user.dart';
import 'package:amit_task/features/users/presentation/cubit/user_cubit/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class UserCubit extends Cubit<UserStates> {
  UserCubit(this._usersRemoteDataSource) : super(UserInitialState());
  static UserCubit get(context)=>BlocProvider.of(context);
  final UsersRemoteDataSource _usersRemoteDataSource;
  List<User> users=[];
  Future<void> getAllUsers()async{
    emit(GetAllUsersLoadingState());
    users = await _usersRemoteDataSource.getAllUsers();
    if(users.isNotEmpty)
      {
        users.sort((a, b) => a.role.compareTo(b.role));
        emit(GetAllUsersSuccessState());
      }
    else{
      emit(GetAllUsersErrorState());
    }
  }
}