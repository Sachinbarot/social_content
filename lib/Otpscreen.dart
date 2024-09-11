import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:social_content/colors.dart';

class OtpClass extends StatefulWidget {
  const OtpClass({super.key});

  @override
  State<OtpClass> createState() => _OtpClassState();
}

class _OtpClassState extends State<OtpClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Text(
            "OTP Verification",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: ThemeColors.primarycolor),
          ),
          Text(
            textAlign: TextAlign.center,
            "We have sent a 6 digit OTP(One time password) to your\nregistered number +91 63*** ***16",
            style: TextStyle(fontSize: 12, color: ThemeColors.secondrycolor),
          ),
          Image.asset(
            "assets/Enter OTP-rafiki.png",
            width: 200,
            height: 200,
          ),
          Text(
            "Enter your 6 digit OTP here",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContainerWidget(),
              SizedBox(
                width: 10,
              ),
              ContainerWidget(),
              SizedBox(
                width: 10,
              ),
              ContainerWidget(),
              SizedBox(
                width: 10,
              ),
              ContainerWidget(),
              SizedBox(
                width: 10,
              ),
              ContainerWidget(),
              SizedBox(
                width: 10,
              ),
              ContainerWidget(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "00:30",
            style: TextStyle(fontSize: 12, color: ThemeColors.primarycolor),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Didn’t receive OTP?",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Resend",
                  style:
                      TextStyle(fontSize: 12, color: ThemeColors.primarycolor),
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 11,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 145,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: ThemeColors.primarycolor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Verify",
                    style: TextStyle(
                        fontSize: 12,
                        color: ThemeColors.primarycolor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    LucideIcons.badge_check,
                    size: 20,
                    color: ThemeColors.primarycolor,
                  )
                ],
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ThemeColors.primarycolor.withOpacity(0.1)),
      height: 40,
      width: 40,
      child: TextFormField(
        style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
        maxLength: 1,
        textAlign: TextAlign.center,
        decoration:
            (InputDecoration(border: InputBorder.none, counter: Offstage())),
      ),
    );
  }
}
