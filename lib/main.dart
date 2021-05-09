import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:widgets/routes/routes.dart';

import 'package:widgets/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      getPages: getRoutes(),
      home: HomeView(),
    );
  }
}
