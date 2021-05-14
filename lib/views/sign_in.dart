import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets/controllers/local_auth.dart';

class SignInView extends StatelessWidget {
  final localAuthController = Get.put(LocalAuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/dia.jpeg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        // child: Column(
        //   children: [
        //     Text(
        //       'Sign In',
        //     ),
        //   ],
        // ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     localAuthController.fingerPrintAuth();
      //   },
      //   child: Icon(
      //     Icons.fingerprint,
      //   ),
      // ),
    );
  }
}
