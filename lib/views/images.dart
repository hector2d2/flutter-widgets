import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:widgets/controllers/image_picker.dart';
import 'package:widgets/widgets/image_preview.dart';

class ImagesView extends StatelessWidget {
  final imagePreviewController = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('image Picker'),
      ),
      body: Column(
        children: [
          ImagePreview(),
          Text(
            'hola',
          ),
          ElevatedButton(
            onPressed: () async {
              await imagePreviewController.getImage();
            },
            child: Text('Tomar Foto'),
          )
        ],
      ),
    );
  }
}
