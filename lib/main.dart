import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sam/controller/controller_screen.dart';
import 'package:provider_sam/view/counter_sam.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ControllerScreen(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: CounterSam());
  }
}
