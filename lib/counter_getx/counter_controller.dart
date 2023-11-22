import 'package:get/get.dart';


class counterController extends GetxController {
  RxInt count = 0.obs;
  incrament() => count++;
  decrament() => count--;
}