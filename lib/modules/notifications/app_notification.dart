import 'package:flutter/material.dart';
import 'package:vamidzo/widgets/navigations/app_bar.dart';

class VamidzoAppNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: 'Notifications'),
          Text('Notifications'),
        ],
      ),
    );
  }
}
