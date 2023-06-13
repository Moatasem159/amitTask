import 'package:amit_task/tasks/task2/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const LoginTitle(),
          const ExtraButtonLogin(
            icon:FontAwesomeIcons.google,
            title:"login with google",
            color:Colors.red,
          ),
          const SizedBox(
            height: 10,
          ),
          const ExtraButtonLogin(
            icon:FontAwesomeIcons.facebook,
            title:"login with facebook",
            color:Colors.blue,
          ),
          const SizedBox(height: 30),
          Text("or", style: GoogleFonts.inter()),
          const SizedBox(height: 15),
          const CustomTextFormField(
            hint: "user name",
          suffix: null,
          ),
          const SizedBox(height: 15),
          const CustomTextFormField(
            hint: "*******************",
            suffix: Icon(Icons.visibility),
          ),
          const Spacer(),
          const LoginButton(),
          const ForgetPasswordButton()
        ],
      ),
    ));
  }
}

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: Text(
          "forgot password",
          style: GoogleFonts.inter(fontSize: 15, color: Colors.blue),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              fixedSize: const Size(340, 60)),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const HomeScreen(),)
            );
          },
          child: Text(
            "Log in",
            style: GoogleFonts.inter(
              fontSize: 15,
            ),
          )),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, required this.hint, required this.suffix,
  });

  final String hint;
  final Widget ?suffix;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: hint,
            suffix: suffix,
            hintStyle: GoogleFonts.inter(),
            border: const UnderlineInputBorder()),
      ),
    );
  }
}

class ExtraButtonLogin extends StatelessWidget {
  const ExtraButtonLogin({super.key, required this.title, required this.icon, required this.color});

  final String title;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.grey[300],
              fixedSize: const Size(340, 60)),
          onPressed: () {},
          child: Row(
            children: [
              Icon(icon,
                color: color,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(title,
                  style: GoogleFonts.inter(
                      fontSize: 15, color: Colors.black)),
            ],
          )),
    );
  }
}

class LoginTitle extends StatelessWidget {
  const LoginTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        Text("Welcome back!",
            style: GoogleFonts.inter(
              fontSize: 25,
            )),
        const SizedBox(
          height: 5,
        ),
        Text("Sign in to continue!",
            style: GoogleFonts.inter(fontSize: 25)),
        const SizedBox(
          height: 60,
        ),
      ],
    );
  }
}
