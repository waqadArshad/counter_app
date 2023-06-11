import 'package:counter_app/constants/constants.dart';
import 'package:counter_app/couter_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

void main() {
  Get.put(CounterController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double unitHeightValue = MediaQuery.of(context).size.width * 0.01;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Stack(
          children: [
            GestureDetector(
              onTap: () => counterController.increment(),
              child: Container(
                height: Get.height,
                width: Get.width,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(() {
                      return Text(
                        '${counterController.counter}',
                        // '10000000',
                        style: TextStyle(fontSize: counterController.multiplier * unitHeightValue, color: Colors.white),
                      );
                    }),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: Container(
                color: Colors.amber,
                child: IconButton(
                  onPressed: () {
                    counterController.reset();
                  },
                  icon: const Icon(Icons.replay_sharp),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Container(
                color: Colors.amber,
                child: IconButton(
                  onPressed: () {
                    counterController.decrement();
                  },
                  icon: const Icon(FontAwesomeIcons.minus),
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
