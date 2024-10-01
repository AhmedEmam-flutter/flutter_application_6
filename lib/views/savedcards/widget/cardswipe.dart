import 'package:flutter/material.dart';
import 'package:flutter_application_6/views/savedcards/widget/contaieruse.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Cardswipe extends StatelessWidget {
  Cardswipe({super.key});
  final PageController _controller = PageController();
  List crads=[
    'assets/totalimages/86162A86-1791-46A5-841F-D31FFF0AC178.jpeg',
    'assets/totalimages/1609811839_landbank-agent-banking-card_12292020-01.jpg',
    'assets/totalimages/images (1).png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _controller,
            children: [
             for (var i = 0; i < 3; i++) 
             Contaieruse(image: crads[i]),
            ],
          ),
        ),
        const SizedBox(height: 16), 
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
          axisDirection: Axis.horizontal,
          effect: ExpandingDotsEffect(
            activeDotColor: Colors.blue,
            dotColor: Colors.grey,
            dotHeight: 8,
            dotWidth: 8,
            expansionFactor: 2,
            spacing: 8.0,
          ),
        ),
      ],
    );
  }
}
