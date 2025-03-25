import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sam/controller/color_controller.dart';
import 'package:provider_sam/controller/controller_screen.dart';
import 'package:provider_sam/view/color_screen.dart';
import 'package:provider_sam/view/counter_sam.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ControllerScreen()),
        ChangeNotifierProvider(create: (context) => ColorController()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ColorScreen());
  }
}
