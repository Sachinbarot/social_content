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
          SizedBox(
            height: 80,
          ),
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
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Good Morning!,",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: ThemeColors.primarycolor),
                    ),
                  ],
                ),
                Container(
                  height: 35,
                  width: 35,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      LucideIcons.bell_dot,
                      color: ThemeColors.primarycolor,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              primary: true,
              physics: ScrollPhysics(),
              itemCount: Dashboard.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(color: ThemeColors.primarycolor)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Dashboard[index]["Section"].toString(),
                                  style: TextStyle(
                                    fontSize: 18,
                                    //fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  Dashboard[index]["subtittle"].toString(),
                                  style: TextStyle(
                                    fontSize: 11,
                                    //fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            Image.asset(
                              Dashboard[index]["iamge"].toString(),
                              height: MediaQuery.of(context).size.height / 5,
                              width: MediaQuery.of(context).size.width / 2.1,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
          //Spacer()
        ],
      ),
    );
  }
}
