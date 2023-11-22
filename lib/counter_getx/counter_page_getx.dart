import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_controller.dart';

class CounterGetxPage extends StatelessWidget {
  CounterGetxPage({super.key});
  final controller = Get.put(counterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterGetxPage'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Counter:'),
          Obx(
            () => Text('${controller.count}'),
          ),
        ],
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: controller.decrament,
            tooltip: 'decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: controller.incrament,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}