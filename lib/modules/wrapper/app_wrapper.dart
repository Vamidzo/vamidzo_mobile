import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vamidzo/widgets/navigations/bottom_navigation.dart';

import '../../controllers/navigation_controller.dart';

class VamidzoAppWrapper extends StatelessWidget {
  VamidzoAppWrapper({
    super.key,
  });

  //
  final VamidzoNavigationController vamidzoNavigationController =
      Get.put(VamidzoNavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => vamidzoNavigationController.pages[
          vamidzoNavigationController.bottomNavigationSelectedItemIndex.value]),
      bottomNavigationBar: VamidzoBottomNavigation(),
    );
  }
}