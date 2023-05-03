import 'package:amit_task/app/injection_container.dart'as di;
import 'package:amit_task/features/users/presentation/cubit/style_cubit/style_cubit.dart';
import 'package:amit_task/features/users/presentation/cubit/user_cubit/user_cubit.dart';
import 'package:amit_task/features/users/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(providers: [
      BlocProvider(create: (context) => di.sl<UserCubit>()..getAllUsers(),),
      BlocProvider(create: (context) => di.sl<StyleCubit>(),),
    ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        )
    );
  }
}