import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main(){
  runApp(LiquidSwipeApp());
}

class LiquidSwipeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Liquid Swipe App',
      home: LiquidSwipeScreen(),
    );
  }
}

class LiquidSwipeScreen extends StatefulWidget{
  @override
  _LiquidSwipeScreenState createState() => _LiquidSwipeScreenState();
}

class _LiquidSwipeScreenState extends State<LiquidSwipeScreen> {
  LiquidController liquidController = LiquidController();

  final pages = [
    Container(
      color: Colors.blue,
      child: Center(
        child: Image.network(
          'https://images.pexels.com/photos/3679490/pexels-photo-3679490.jpeg?cs=srgb&dl=pexels-lola-russian-3679490.jpg&fm=jpg&_gl=1*8vs9fy*_ga*NjYzMzA5NjA0LjE3MDE1ODE1NTc.*_ga_8JE65Q40S6*MTcwMTc4MjE2OS41LjEuMTcwMTc4MjE3NS4wLjAuMA..',
          fit: BoxFit.fill,
          ),
      ),
    ),
    Container(
      color: Colors.red,
      child: Center(
        child: Image.network(
          'https://images.pexels.com/photos/5824487/pexels-photo-5824487.jpeg?cs=srgb&dl=pexels-charlotte-may-5824487.jpg&fm=jpg&_gl=1*pxcl92*_ga*NjYzMzA5NjA0LjE3MDE1ODE1NTc.*_ga_8JE65Q40S6*MTcwMTc4MjE2OS41LjEuMTcwMTc4MjE4NS4wLjAuMA..',
          fit: BoxFit.fill,
          ),
      ),
    ),
    Container(
      color: Colors.green,
      child: Center(
        child: Image.network(
          'https://images.pexels.com/photos/90628/pexels-photo-90628.jpeg?cs=srgb&dl=pexels-morais-90628.jpg&fm=jpg&_gl=1*sw77si*_ga*NjYzMzA5NjA0LjE3MDE1ODE1NTc.*_ga_8JE65Q40S6*MTcwMTc4MjE2OS41LjEuMTcwMTc4MjE4OC4wLjAuMA..',
          fit: BoxFit.fill,
          ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        fullTransitionValue: 300,
        waveType:  WaveType.liquidReveal,
        liquidController: liquidController,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          liquidController.animateToPage(page: liquidController.currentPage + 1);
          },
        ),
    );
  }
}