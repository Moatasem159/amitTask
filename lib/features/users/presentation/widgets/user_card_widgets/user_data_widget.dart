import 'package:amit_task/features/users/domain/entities/user.dart';
import 'package:amit_task/features/users/presentation/widgets/user_card_widgets/info_widget.dart';
import 'package:flutter/material.dart';
class UserDataWidget extends StatelessWidget{
  final User user;
  const UserDataWidget({super.key,required this.user,});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height:7),
        InfoWidget(title: "Name",data: user.name),
        const SizedBox(height:3),
        InfoWidget(title: "Email",data: user.email),
        const SizedBox(height:3),
        InfoWidget(title: "Password",data: user.password),
        const SizedBox(height:3),
        InfoWidget(title: "role",data: user.role),
      ],
    );
  }
}