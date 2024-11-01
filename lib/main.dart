import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomScrollWidget(),
    );
  }
}

class CustomScrollWidget extends StatefulWidget {
  const CustomScrollWidget({super.key});

  @override
  _CustomScrollWidgetState createState() => _CustomScrollWidgetState();
}

class _CustomScrollWidgetState extends State<CustomScrollWidget> {
  Color? newColor = Colors.red;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('data'),
        ),
        body: TweenAnimationBuilder(
          tween: ColorTween(begin: Colors.white, end: newColor),
       
          duration: const Duration(seconds: 1),
          builder: (context, Color? color, child) {
            return ColorFiltered(
              colorFilter: ColorFilter.mode(color!, BlendMode.modulate),
              child: Image.asset('assets/sun.jpg'),
            );
          },
        ));
  }
}
