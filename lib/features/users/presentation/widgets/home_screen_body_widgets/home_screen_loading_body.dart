import 'package:flutter/material.dart';
class HomeScreenLoadingBody extends StatelessWidget {
  const HomeScreenLoadingBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 50,
        height: 50,
        child: CircularProgressIndicator(
          color: Colors.black,
          strokeWidth: 1,
        ),
      ),
    );
  }
}