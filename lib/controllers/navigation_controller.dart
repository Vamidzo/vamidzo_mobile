// ignore_for_file: unnecessary_overrides
import 'package:get/get.dart';
import 'package:vamidzo/modules/courses/course_main.dart';
import 'package:vamidzo/modules/dashboard/dashboard.dart';
import 'package:vamidzo/modules/settings/settings.dart';
import 'package:vamidzo/modules/wallet/wallet_main.dart';

class VamidzoNavigationController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  // bottom navigation
  var bottomNavigationSelectedItemIndex = 0.obs;
  //
  var pages = [
    VamidzoDashboard(),
    VamidzoCourseMain(),
    VamidzoWalletMain(),
    VamidzoProfileMain(),
  ];
  //
  handleBottomNavigationSelectedItemIndexChange(index) {
    bottomNavigationSelectedItemIndex.value = index;
  }
}
