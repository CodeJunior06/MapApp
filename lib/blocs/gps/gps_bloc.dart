import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
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
  }
}
