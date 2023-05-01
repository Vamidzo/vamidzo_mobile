import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vamidzo/controllers/navigation_controller.dart';

class VamidzoBottomNavigation extends StatelessWidget {
  VamidzoBottomNavigation({super.key});

  var vamidzoNavigationController = Get.put(VamidzoNavigationController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          vamidzoBottomNavigationItem(
              context, 0, 'assets/images/home.svg', 'Home'),
          vamidzoBottomNavigationItem(
              context, 1, 'assets/images/routing.svg', 'Courses'),
          vamidzoBottomNavigationItem(
              context, 2, 'assets/images/wallet.svg', 'Wallet'),
          vamidzoBottomNavigationItem(
              context, 3, 'assets/images/user.svg', 'Profile'),
        ],
        elevation: 1,
        currentIndex:
            vamidzoNavigationController.bottomNavigationSelectedItemIndex.value,
        selectedItemColor: Theme.of(context).primaryColor,
        selectedLabelStyle:
            Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 0),
        unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
        onTap: (index) => vamidzoNavigationController
            .handleBottomNavigationSelectedItemIndexChange(index),
      ),
    );
  }

  BottomNavigationBarItem vamidzoBottomNavigationItem(
    context,
    int index,
    String icon,
    String label,
  ) {
    return BottomNavigationBarItem(
      backgroundColor:
          Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      icon: Obx(
        () => Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: vamidzoNavigationController
                            .bottomNavigationSelectedItemIndex.value ==
                        index
                    ? Theme.of(context).primaryColor.withOpacity(0.3)
                    : null,
                borderRadius: BorderRadius.circular(35),
              ),
              child: SvgPicture.asset(
                icon,
                semanticsLabel: label,
                color: vamidzoNavigationController
                            .bottomNavigationSelectedItemIndex.value ==
                        index
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).iconTheme.color,
                height: 20,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: vamidzoNavigationController
                            .bottomNavigationSelectedItemIndex.value ==
                        index
                    ? Theme.of(context).primaryColor
                    : null,
              ),
            ),
          ],
        ),
      ),
      label: label,
    );
  }
}
