import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:widgets/controllers/image_picker.dart';

class ImagePreview extends StatelessWidget {
  final imagePreview = Get.find<ImagePickerController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: Image.file(
          imagePreview.image.value,
          semanticLabel: 'imagen',
          errorBuilder: (_, __, ___) => Text('no image'),
        ),
      ),
    );
  }
}
