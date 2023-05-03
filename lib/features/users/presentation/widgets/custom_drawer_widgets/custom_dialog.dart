import 'package:amit_task/features/users/presentation/widgets/custom_drawer_widgets/dialog_body.dart';
import 'package:flutter/material.dart';
class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return const Dialog(
      child: DialogBody(),
    );
  }
}