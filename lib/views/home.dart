import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'package:widgets/controllers/bottom_navbar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build home');
    BottomNavBarController navBarController = Get.put(BottomNavBarController());
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            navBarController.titleView.value,
          ),
        ),
      ),
      body: Obx(
        () => IndexedStack(
          index: navBarController.indexView.value,
          children: [
            _widgets(),
            _package(),
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        onTap: (int index) => navBarController.changeView(index),
        style: TabStyle.titled,
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
        _listItem(
          title: 'test',
          icon: Icons.enhanced_encryption,
          onTap: () {
            // Get.toNamed('encryption');
          },
        ),
      ],
    );
  }

  Widget _package() {
    return ListView(
      children: [
        _listItem(
          title: 'Encriptacion',
          icon: Icons.enhanced_encryption,
          onTap: () {
            Get.toNamed('encryption');
          },
        ),
        _listItem(
          title: 'Image Picked',
          icon: Icons.image,
          onTap: () {
            Get.toNamed('images');
          },
        ),
        _listItem(
          title: 'Sign In',
          icon: Icons.people,
          onTap: () {
            Get.toNamed('signIn');
          },
        ),
      ],
    );
  }

  Widget _listItem({
    String? title,
    IconData? icon,
    Function? onTap,
  }) {
    return ListTile(
      title: Text(title!),
      leading: Icon(icon),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () => onTap!(),
    );
  }
}
