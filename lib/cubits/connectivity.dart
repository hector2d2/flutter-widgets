import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectivity/connectivity.dart';

class ConnectivityCubit extends Cubit<bool> {
  ConnectivityCubit() : super(null);

  bool isInternetActive;

  void initCheckInternetListner() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      print(result);
      if (result == ConnectivityResult.none) {
        print('no hay conexion');
        emit(false);
      } else {
        print('si hay conexion');
        emit(true);
      }
    });
  }
}
