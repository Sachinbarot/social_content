import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:social_content/utils/map.dart';

class HrsectionClass extends StatefulWidget {
  const HrsectionClass({super.key});

  @override
  State<HrsectionClass> createState() => _HrsectionClassState();
}

class _HrsectionClassState extends State<HrsectionClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: const Icon(
          LucideIcons.chevron_left,
          size: 20,
        ),
        title: const Text(
          'Hr Section',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    LucideIcons.calendar_x,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Leave Section",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            GridView.builder(
                itemCount: hrsection.length,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                primary: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.99,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 1.0),
                itemBuilder: (context, index) {
                  return Card(
                    child: Text(hrsection[index]["leavename"].toString()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
