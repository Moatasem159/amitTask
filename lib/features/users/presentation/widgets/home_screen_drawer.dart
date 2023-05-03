import 'package:amit_task/features/users/presentation/widgets/custom_drawer_widgets/custom_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key,});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Settings",style: GoogleFonts.roboto(
                fontSize: 20
            )),
            const SizedBox(height: 15,),
            InkWell(
              onTap: () {
                showDialog(context: context, builder: (context) {
                  return const CustomDialog();
                },);
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text("Change Text Style",style: GoogleFonts.roboto(),),
                    const Spacer(),
                    const Icon(Icons.format_shapes)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}