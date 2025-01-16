import 'package:flutter/material.dart';
import 'package:vibes_veggies/components/my_button.dart';
import 'package:vibes_veggies/components/my_textfield.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage(
      {super.key,
        required this.emailHintText,
        required this.passwordHintText,
        required this.obscureText,
        this.onTap});

  final String emailHintText;
  final String passwordHintText;
  final bool obscureText;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    /*
    in the next part of the code, we will implement the login function
    */
//navigate to homepage
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_outline_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 25,
            ),

            Text(
              "Login to Veggie Vibes",
              style: TextStyle(
                fontSize: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            //email field
            MyTextfield(
              controller: emailController,
              hintText: widget.emailHintText,
              obscureText: false,
            ),

            const SizedBox(
              height: 25,
            ),
            //password field
            MyTextfield(
              controller: passwordController,
              hintText: widget.passwordHintText,
              obscureText: widget.obscureText,
            ),
            const SizedBox(
              height: 25,
            ),
            //login button
            MyButton(
              text: "Login",
              onTap: login,
            ),

            const SizedBox(
              height: 25,
            ),

            //register button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
