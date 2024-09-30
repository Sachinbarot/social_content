import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:social_content/colors.dart';

class RegisterClass extends StatefulWidget {
  const RegisterClass({super.key});

  @override
  State<RegisterClass> createState() => _RegisterClassState();
}

class _RegisterClassState extends State<RegisterClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(),
            Text(
              "Welcome Here,",
              style: TextStyle(
                  fontSize: 18,
                  color: ThemeColors.primarycolor,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Glad to see you onboard, Access all you need!",
              style: TextStyle(fontSize: 13, color: ThemeColors.secondrycolor),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/4.png",
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration:
                    const InputDecoration(labelText: "Enter Your Employee ID"),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                ),
                Text(
                  "Login",
                  style: TextStyle(color: ThemeColors.primarycolor),
                )
              ],
            ),
            Text(
              "Forgot Password?",
              style: TextStyle(color: ThemeColors.primarycolor),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3.3,
              child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "Proceed",
                        style: TextStyle(color: ThemeColors.primarycolor),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        LucideIcons.circle_arrow_right,
                        color: ThemeColors.primarycolor,
                      )
                    ],
                  )),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
