import 'dart:io';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:widgets/cubits/connectivity.dart';
import 'package:widgets/cubits/image_picker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            BlocBuilder<ConnectivityCubit, bool>(
              builder: (context, state) {
                return Text('Conexion a internet: $state');
              },
            ),
            ElevatedButton(
              onPressed: () async {
                await context.read<ImagePickerCubit>().takePhoto();
              },
              child: Text('OpenCamera'),
            ),
            BlocBuilder<ImagePickerCubit, File>(
              builder: (context, state) {
                if (state != null) {
                  return Image.file(state);
                } else {
                  return Text('Image not Selected');
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                tabController.index = 0;
                setState(() {});
              },
              child: Text('Person'),
            ),
            ElevatedButton(
              onPressed: () {
                tabController.index = 1;
                setState(() {});
              },
              child: Text('Wine'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        controller: tabController,
        items: [
          TabItem(
            icon: Icon(Icons.person),
          ),
          TabItem(
            icon: Icon(Icons.wine_bar),
          ),
        ],
      ),
    );
  }
}
