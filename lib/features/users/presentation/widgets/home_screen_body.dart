import 'package:amit_task/features/users/presentation/cubit/user_cubit/user_cubit.dart';
import 'package:amit_task/features/users/presentation/cubit/user_cubit/user_state.dart';
import 'package:amit_task/features/users/presentation/widgets/home_screen_body_widgets/home_screen_success_body.dart';
import 'package:amit_task/features/users/presentation/widgets/home_screen_body_widgets/home_screen_loading_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserStates>(
      builder: (context, state) {
        UserCubit cubit=UserCubit.get(context);
        if(state is GetAllUsersSuccessState)
          {
            return HomeScreenSuccessBody(users: cubit.users);
          }
        if(state is GetAllUsersLoadingState)
          {
            return const HomeScreenLoadingBody();
          }
        return Container();
      },
    );
  }
}