import 'package:flutter/material.dart';
import 'package:social_content/utils/onboardingmap.dart';

class OnboardingClass extends StatefulWidget {
  const OnboardingClass({super.key});

  @override
  State<OnboardingClass> createState() => _OnboardingClassState();
}

class _OnboardingClassState extends State<OnboardingClass> {
  int _currentPage = 0;

  PageController _pageController = PageController();

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: onboardingmap.length,
        onPageChanged: (value) {
          setState(() {
            _currentPage = value;
          });
        },
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
              children: [
                const Spacer(),
                Image.asset(onboardingmap[index]["image"].toString()),
                const SizedBox(
                  height: 40.0,
                ),
                Text(
                  onboardingmap[index]["title"].toString(),
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  onboardingmap[index]["specialText"].toString(),
                  style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  textAlign: TextAlign.center,
                  onboardingmap[index]["subTitle"].toString(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _currentPage > 0
                        ? TextButton(
                            onPressed: () {
                              _pageController.previousPage(
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.ease);
                            },
                            child: const Text(
                              "Back",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ))
                        : Container(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                            onboardingmap.length,
                            (index) => index == _currentPage
                                ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 8.0,
                                      width: 14.0,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(12.0)),
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 8.0,
                                      width: 8.0,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(12.0)),
                                    ),
                                  ))
                      ],
                    ),
                    _currentPage != onboardingmap.length - 1
                        ? TextButton(
                            onPressed: () {
                              _pageController.nextPage(
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.ease);
                            },
                            child: const Text(
                              "Next",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ))
                        : Container()
                  ],
                ),
                const Spacer(),
              ],
            ),
          );
        },
      ),
    );
  }
}
