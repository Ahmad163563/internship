import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Smoothindicator extends StatelessWidget {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                children: [
                  Container(color: Colors.red),
                  Container(color: Colors.green),
                  Container(color: Colors.blue),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(), // aur bhi effects hain!
              ),
            ),
          ],
        ),
      );
  }
}
