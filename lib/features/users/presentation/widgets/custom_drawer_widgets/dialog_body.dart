import 'package:amit_task/features/users/presentation/cubit/style_cubit/style_cubit.dart';
import 'package:amit_task/features/users/presentation/cubit/style_cubit/style_state.dart';
import 'package:amit_task/features/users/presentation/widgets/custom_drawer_widgets/dialog_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class DialogBody extends StatelessWidget {
  const DialogBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StyleCubit, StyleStates>(
      builder: (context, state) {
        StyleCubit cubit=StyleCubit.get(context);
        return SizedBox(
            child:Wrap(
              alignment: WrapAlignment.center,
              children: cubit.styles.map((e){
                return DialogData(customFontStyle: e,);
              }).toList(),
            )
        );
      },
    );
  }
}