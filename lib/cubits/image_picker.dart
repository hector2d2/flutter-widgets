import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerCubit extends Cubit<File> {
  ImagePickerCubit() : super(null) {
    picker = ImagePicker();
  }

  ImagePicker picker;

  Future<void> takePhoto() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    print('picked File $pickedFile');
    if (pickedFile != null) {
      emit(File(pickedFile.path));
    }
  }
}
