import 'package:amit_task/features/users/domain/entities/user.dart';
import 'package:amit_task/features/users/presentation/widgets/user_card_widgets/user_card.dart';
import 'package:flutter/material.dart';
class HomeScreenSuccessBody extends StatelessWidget {
  final List<User> users;
  const HomeScreenSuccessBody({super.key, required this.users,});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount:users.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2,
          mainAxisExtent: 215,
          mainAxisSpacing:5
      ),
      itemBuilder: (context, index) {
        return UserCard(user:users[index]);
      },);
  }
}