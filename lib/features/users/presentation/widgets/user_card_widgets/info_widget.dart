import 'package:amit_task/features/users/presentation/cubit/style_cubit/style_cubit.dart';
import 'package:amit_task/features/users/presentation/cubit/style_cubit/style_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key, required this.title, required this.data});
  final String title;
  final String data;
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<StyleCubit, StyleStates>(
      builder: (context, state) {
        StyleCubit cubit=StyleCubit.get(context);
        return FittedBox(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("$title:", style: cubit.styles[cubit.currantStyleIndex].style),
              Text(data, style:cubit.styles[cubit.currantStyleIndex].style),
            ],
          ),
        );
      },
    );
  }
}