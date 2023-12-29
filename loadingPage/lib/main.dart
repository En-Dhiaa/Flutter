import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoApp(),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 15),
    );
    animationController.addListener(() {
      setState(() {});
    });

    animationController.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final percentage = animationController.value * 100;
    return Scaffold(
      backgroundColor: Color.fromARGB(172, 22, 0, 87),
      body: Center(
        child: Stack(children: [
          Image.asset(
            'assets/we.gif',
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            color: Color.fromARGB(213, 0, 40, 109),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/we6.gif',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  "Daigonsing...",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 20,
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: LiquidLinearProgressIndicator(
                    borderRadius: 20.0,
                    value: animationController.value,
                    valueColor: AlwaysStoppedAnimation(
                        Color.fromARGB(255, 255, 255, 255)),
                    center: Text(
                      '${percentage.toStringAsFixed(0)}%',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    direction: Axis.horizontal,
                    backgroundColor: Color.fromARGB(157, 192, 163, 255),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Path _buildHeartPath() {
    return Path()
      ..moveTo(55, 15)
      ..cubicTo(55, 12, 50, 0, 30, 0)
      ..cubicTo(0, 0, 0, 37.5, 0, 37.5)
      ..cubicTo(0, 55, 20, 77, 55, 95)
      ..cubicTo(90, 77, 110, 55, 110, 37.5)
      ..cubicTo(110, 37.5, 110, 0, 80, 0)
      ..cubicTo(65, 0, 55, 12, 55, 15)
      ..close();
  }
}
