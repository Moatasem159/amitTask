import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black)
        )
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Users", style: GoogleFonts.aBeeZee(
            color: Colors.black
        ),),
        centerTitle: true,
      ),
    );
  }
  @override
  Size get preferredSize => const Size(double.infinity, 50);
}