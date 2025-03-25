import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sam/controller/controller_screen.dart';

class CounterSam extends StatefulWidget {
  const CounterSam({super.key});

  @override
  State<CounterSam> createState() => _CounterSamState();
}

class _CounterSamState extends State<CounterSam> {
  String name = "abhai";
  int count = 0;
  @override
  Widget build(BuildContext context) {
    final countstate =
        context
            .watch<
              ControllerScreen
            >(); // provide is watch the state of the controller

    final readcounter = context.read<ControllerScreen>();
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // count++;
          // setState(() {});

          //countstate.incrementcounter();

          readcounter.incrementcounter();
        },
        child: Icon(Icons.add),
      ),

      // body: Center(
      //   child: Text(
      //     countstate.count.toString(),
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("welcome $name", style: TextStyle(color: Colors.white)),
          ),
          Consumer(
            builder:
                (context, value, child) => Text(
                  readcounter.count.toString(),
                  style: TextStyle(color: Colors.white),
                ),
          ),
        ],
      ),
    );
  }
}
