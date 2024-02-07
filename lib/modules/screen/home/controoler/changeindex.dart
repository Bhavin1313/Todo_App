import 'package:get/get.dart';
import '../tabpage/model/index.dart';

class ChangeIndexController extends GetxController {
  ChangePageIndex changePageIndex = ChangePageIndex(index: 0);

  void ChangeIndex({required int val}) {
    changePageIndex.index = val;
    update();
  }
}
