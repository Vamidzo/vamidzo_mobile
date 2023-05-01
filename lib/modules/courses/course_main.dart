import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vamidzo/modules/courses/join_course.dart';
import 'package:vamidzo/modules/wrapper/app_wrapper.dart';
import 'package:vamidzo/widgets/headers/screens_header.dart';
import 'package:vamidzo/widgets/menus/screens_menu.dart';

class VamidzoCourseMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomHeader(title: 'Courses'),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: VamidzoScreenMenu(
                items: [
                  {
                    'icon': Icons.home,
                    'title': 'Rejoindre un parcours',
                    'description': "L'écran d'accueil de l'application.",
                    'onTap': () => Get.to(VamidzoJoinCourse()),
                  },
                  {
                    'icon': Icons.wallet,
                    'title': 'Créer un parcours',
                    'description': 'Gérez votre portefeuille',
                    'onTap': () => {},
                  },
                  {
                    'icon': Icons.person,
                    'title': 'Trouver un conducteur à proximité',
                    'description': 'Gérez les paramètres de votre compte',
                    'onTap': () => {},
                  },
                  {
                    'icon': Icons.person,
                    'title': 'Historiques',
                    'description': 'Gérez les paramètres de votre compte',
                    'onTap': () => {},
                  },
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
