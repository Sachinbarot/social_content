import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:social_content/colors.dart';
import 'package:social_content/utils/map.dart';

class DashboardClass extends StatefulWidget {
  const DashboardClass({super.key});

  @override
  State<DashboardClass> createState() => _DashboardClassState();
}

class _DashboardClassState extends State<DashboardClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi sachin,",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "Good Morning!",
                      style: TextStyle(
                          fontSize: 14, color: ThemeColors.primarycolor),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(
                      LucideIcons.bell_dot,
                      size: 20,
                      color: ThemeColors.primarycolor,
                    ),
                  ),
                )
              ],
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              primary: true,
              itemCount: Dashboard.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Card(
                      elevation: 0.0,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                Dashboard[index]["Section"].toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                Dashboard[index]["subtittle"].toString(),
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(Dashboard[index]["iamge"].toString())
                        ],
                      )),
                );
              }),
          Spacer()
        ],
      ),
    );
  }
}
