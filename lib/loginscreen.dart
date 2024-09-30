import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:social_content/colors.dart';

class LoginCLass extends StatefulWidget {
  const LoginCLass({super.key});

  @override
  State<LoginCLass> createState() => _LoginCLassState();
}

class _LoginCLassState extends State<LoginCLass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(),
            Text(
              "Welcome back,",
              style: TextStyle(fontSize: 20, color: ThemeColors.primarycolor),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Glad to see you here!",
              style: TextStyle(fontSize: 11, color: ThemeColors.secondrycolor),
            ),
            Image.asset(
              "assets/Login-pana.png",
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "Enter Employee ID",
                    labelStyle: TextStyle(fontSize: 14)),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "New here?",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Proceed to register!",
                    style: TextStyle(
                        fontSize: 11, color: ThemeColors.primarycolor),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 11, color: ThemeColors.primarycolor),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 11,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 2.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: ThemeColors.primarycolor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Proceed",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    LucideIcons.circle_check,
                    size: 20,
                    color: ThemeColors.primarycolor,
                  )
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
