import 'package:get/route_manager.dart';
import 'package:widgets/views/encryption.dart';
import 'package:widgets/views/images.dart';

List<GetPage<dynamic>> getRoutes() => [
      GetPage(name: 'encryption', page: () => EncryptionView()),
      GetPage(name: 'images', page: () => ImagesView()),
    ];
