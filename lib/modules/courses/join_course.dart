import 'package:flutter/material.dart';
import 'package:vamidzo/widgets/navigations/app_bar.dart';

class VamidzoJoinCourse extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(title: 'Rejoindre un parcours'),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Text('Join Course'),
            ),
          )
        ],
      ),
    );
  }
}
