import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  static const TextStyle goldcoinGreyStyle = TextStyle(
    color: Colors.grey,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle greyStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.grey,
  );

  static const TextStyle boldStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  );

  final pages = [
    Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Nature images',
                  style: goldcoinGreyStyle,
                ),
                Text(
                  'Skip',
                  style: goldcoinGreyStyle,
                ),
              ],
            ),
          ),
          Image.asset('images/bird-3732867_1920.jpg'),
          Column(
            children: <Widget>[
              Text(
                'Snow',
                style: greyStyle,
              ),
              Text(
                'Owl',
                style: boldStyle,
              ),
            ],
          )
        ],
      ),
    ),
    Container(
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Nature images',
                  style: goldcoinGreyStyle,
                ),
                Text(
                  'Skip',
                  style: goldcoinGreyStyle,
                ),
              ],
            ),
          ),
          Image.asset('images/cat-2083492_1920.jpg'),
          Column(
            children: <Widget>[
              Text(
                'Cute',
                style: greyStyle,
              ),
              Text(
                'Cat',
                style: boldStyle,
              ),
            ],
          )
        ],
      ),
    ),
    Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Nature images',
                  style: goldcoinGreyStyle,
                ),
                Text(
                  'Skip',
                  style: goldcoinGreyStyle,
                ),
              ],
            ),
          ),
          Image.asset('images/tiger-2320819_1920.jpg'),
          Column(
            children: <Widget>[
              Text(
                'Beatiful',
                style: greyStyle,
              ),
              Text(
                'Tiger',
                style: boldStyle,
              ),
            ],
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          enableLoop: true,
          fullTransitionValue: 300,
          enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
      ),
    );
  }
}
