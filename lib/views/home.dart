import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'package:widgets/controllers/bottom_navbar.dart';
import 'package:widgets/styles/colors.dart';
import 'package:widgets/widgets/btn_fat.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build home');
    BottomNavBarController navBarController = Get.put(BottomNavBarController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 15.0,
                ),
                child: Obx(
                  () => Text(
                    navBarController.titleView.value,
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Obx(
                  () => IndexedStack(
                    index: navBarController.indexView.value,
                    children: [
                      _widgets(),
                      _package(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        onTap: (int index) => navBarController.changeView(index),
        style: TabStyle.titled,
        backgroundColor: Colors.blueAccent,
        items: [
          TabItem(
            title: 'Widgets',
            icon: Icon(
              Icons.widgets,
            ),
          ),
          TabItem(
            title: 'Package',
            icon: Icon(
              Icons.book,
            ),
          ),
        ],
      ),
    );
  }

  Widget _widgets() {
    return ListView(
      children: [
        ButtonFat(
          color1: getColorStyle(),
          color2: getColorStyle(),
          icon: Icons.access_alarm,
          texto: 'Alarm',
          onPress: () {
            print('hola mundo');
          },
        ),
      ],
    );
  }

  Widget _package() {
    return ListView(
      children: [
        ButtonFat(
          color1: getColorStyle(),
          color2: getColorStyle(),
          icon: Icons.enhanced_encryption,
          texto: 'Encriptacion',
          onPress: () {
            Get.toNamed('encryption');
          },
        ),
        ButtonFat(
          color1: getColorStyle(),
          color2: getColorStyle(),
          icon: Icons.people,
          texto: 'Sign In',
          onPress: () {
            Get.toNamed('signIn');
          },
        ),
        ButtonFat(
          color1: getColorStyle(),
          color2: getColorStyle(),
          icon: Icons.image,
          texto: 'Image Picked',
          onPress: () {
            Get.toNamed('images');
          },
        ),
        ButtonFat(
          color1: getColorStyle(),
          color2: getColorStyle(),
          icon: Icons.connect_without_contact,
          texto: 'Local connection',
          onPress: () {},
        ),
      ],
    );
  }
}
