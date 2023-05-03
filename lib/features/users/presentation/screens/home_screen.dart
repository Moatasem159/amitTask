import 'package:amit_task/features/users/presentation/widgets/home_screen_appbar.dart';
import 'package:amit_task/features/users/presentation/widgets/home_screen_body.dart';
import 'package:amit_task/features/users/presentation/widgets/home_screen_drawer.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(),
          body: HomeScreenBody(),
          drawer: CustomDrawer(),
        )
    );
  }
}