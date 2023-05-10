part of 'gps_bloc.dart';

@immutable
abstract class GpsEvent extends Equatable {
  const GpsEvent();
  @override
  List<Object?> get props {
    return [];
  }
}

class GPSPermissionEvent extends GpsEvent {
  final bool isGPSEnable;
  final bool isPemissionEnable;

  const GPSPermissionEvent(
      {required this.isGPSEnable, required this.isPemissionEnable});
}
