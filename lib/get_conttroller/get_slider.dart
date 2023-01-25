import 'package:get/get.dart';

class SliderConttroller extends GetxController {
  RxDouble slider = 0.0.obs;

  void Slider(value) {
    slider.value = value;
    print("$slider");
  }
}
