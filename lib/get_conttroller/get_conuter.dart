import 'package:get/get.dart';

class CounterConttroller extends GetxController {
  RxInt Count = 0.obs;

  void IncreaseCount() {
    Count.value++;
    print("$Count");
  }
}
