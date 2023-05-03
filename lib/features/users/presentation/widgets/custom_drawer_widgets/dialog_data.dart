import 'package:amit_task/features/users/domain/entities/custom_font_style.dart';
import 'package:amit_task/features/users/presentation/cubit/style_cubit/style_cubit.dart';
import 'package:flutter/material.dart';
class DialogData extends StatelessWidget {
  final CustomFontStyle customFontStyle;
  const DialogData({super.key, required this.customFontStyle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        StyleCubit.get(context).changeStyle(customFontStyle.index);
        Navigator.pop(context);
        Navigator.pop(context);
      },
      child: Container(
        width: 70,
        height: 70,
        margin: const EdgeInsets.all(5),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("hello",style: customFontStyle.style,),
            const SizedBox(height: 8,),
            Text(customFontStyle.name,style: customFontStyle.style,)
          ],
        ),
      ),
    );
  }
}