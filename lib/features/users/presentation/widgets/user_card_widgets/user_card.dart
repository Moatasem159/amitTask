import 'package:amit_task/features/users/domain/entities/user.dart';
import 'package:amit_task/features/users/presentation/widgets/user_card_widgets/avatar_widget.dart';
import 'package:amit_task/features/users/presentation/widgets/user_card_widgets/user_data_widget.dart';
import 'package:flutter/material.dart';
class UserCard extends StatelessWidget {
  final User user;
  const UserCard({super.key, required this.user});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: Colors.black),
        color: user.role=="admin"?const Color(0xff146C94):const Color(0xffAFD3E2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          AvatarWidget(avatar: user.avatar),
          UserDataWidget(user: user)
        ],
      ),
    );
  }
}