import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class Increment extends GetxController {
  var num = 0;
  var result = 0;
  // var val = 0;

  // get increment => null;

  incrementValue() {
    result += num;
  }
}
