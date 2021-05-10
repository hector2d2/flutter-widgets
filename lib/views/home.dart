import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets'),
      ),
      body: ListView(
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
      ),
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
