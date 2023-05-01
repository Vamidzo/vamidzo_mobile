import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.title,
    this.actions,
    this.leading,
  });

  //
  final String title;
  final Widget? actions;
  final Widget? leading;

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                leading ?? const SizedBox(),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontWeight: FontWeight.w300),
                ),
              ],
            ),
            actions ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
