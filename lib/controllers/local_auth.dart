import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthController extends GetxController {
  final LocalAuthentication _localAuth = LocalAuthentication();

  Future<void> fingerPrintAuth() async {
    final bool isBiometricActive = await _localAuth.canCheckBiometrics;
    if (isBiometricActive) {
      bool didAuthenticate = await _localAuth.authenticate(
          localizedReason: 'Por favor identificate', biometricOnly: true);
      if (didAuthenticate) {
        print('te haz identificado');
      } else {
        print('Te tienes que identificar para continuar');
      }
    } else {
      print('no compatible con fingerprint');
    }
  }
}
