import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'gps_event.dart';
part 'gps_state.dart';

class GpsBloc extends Bloc<GpsEvent, GpsState> {
  GpsBloc() : super(const GpsState(isGPS: false, isPermission: false)) {
    on<GPSPermissionEvent>((event, emit) {
      emit(state.copyObject(
          isGPS: event.isGPSEnable, isPermission: event.isPemissionEnable));
    });

    _init();
  }

  Future<void> _init() async {
    var response = await _checkGPStatus();
    print("ResposneGPS isEnabled: $response");
  }

  Future<bool> _checkGPStatus() async {
    final isEnable = await Geolocator.isLocationServiceEnabled();

    Geolocator.getServiceStatusStream().listen((event) {
      final isEnabled = (event.index == 1) ? true : false;
      print("GPS IS: $isEnabled");
    });

    return isEnable;
  }
}
