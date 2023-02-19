// // Defining a GetX controller
// class CounterController extends GetxController {
//   var count = 0;

//   void increment() {
//     count++;
//     update();
//   }
// }

// // Using the GetBuilder widget to consume data from the controller
// class CounterDisplay extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.find<CounterController>();
//     return GetBuilder<CounterController>(
//       builder: (controller) {
//         return Text('Count: ${controller.count}');
//       },
//     );
//   }
// }
