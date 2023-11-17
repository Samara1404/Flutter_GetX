import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_controller.dart';

class CounterGetxPage extends StatelessWidget {
  CounterGetxPage({super.key});  
final controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 116, 232, 106),      
        title: const Text('Counter Get-X Page',       
        ), centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter Page Button',
            ),
            // Builder(
            //   builder: (context) {
            //     return 
                Obx(() => Text(
                  '${controller.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
            //   }
            // ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: controller.increment,
            tooltip: 'increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: controller.decrement,
            tooltip: 'decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ), 
    );
  }
}