import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.title});

  //
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewPadding,
      child: Container(
        margin: EdgeInsets.zero,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.1, color: Colors.grey),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () => Get.back(),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: SvgPicture.asset(
                      'assets/images/arrowleft.svg',
                      semanticsLabel: 'notification',
                      color: Theme.of(context).iconTheme.color,
                      height: 25,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  title ?? '',
                  style: Theme.of(context).textTheme.bodyLarge,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
