import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Percentage Indicator Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Percentage Indicator Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            CircularPercentIndicator(
              radius: 200,
              lineWidth: 14,
              percent: 0.7,
              progressColor: Colors.green,
              fillColor: Colors.transparent,
              animateFromLastPercent: true,
              backgroundColor: Colors.red,
            ),
            const SizedBox(height: 10),
            LinearPercentIndicator(
              width: 300.0,
              lineHeight: 14.0,
              percent: 0.2,
              backgroundColor: Colors.grey,
              barRadius: const Radius.circular(20),
              progressColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
