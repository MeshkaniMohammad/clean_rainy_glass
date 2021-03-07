import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double brushSize = 50;
  double progress = 0;
  //bool thresholdReached = false;
  final key = GlobalKey<ScratcherState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Scratcher(
              key: key,
              brushSize: brushSize,
              threshold: 30,
              image: Image.asset(
                'assets/images/rain_glass.jpg',
                fit: BoxFit.fitHeight,
              ),
              //onThreshold: () => setState(() => thresholdReached = true),
              // onChange: (value) {
              //   setState(() {
              //     progress = value;
              //   });
              // },
              child: Image.asset(
                'assets/images/background.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   right: 0,
          //   child: Container(
          //     padding: const EdgeInsets.symmetric(
          //       horizontal: 8,
          //       vertical: 12,
          //     ),
          //     color: Colors.black,
          //     child: Text(
          //       '${progress.floor().toString()}% '
          //       '(${thresholdReached ? 'done' : 'pending'})',
          //       textAlign: TextAlign.right,
          //       style: const TextStyle(
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
