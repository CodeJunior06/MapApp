part of 'gps_bloc.dart';

class GpsState extends Equatable {
  final bool isGPS;
  final bool isPermission;

  const GpsState({required this.isGPS, required this.isPermission});

  @override
  List<Object?> get props {
    return [isGPS, isPermission];
  }

  @override
  String toString() {
    // TODO: implement toString
    return "{ isGPS: $isGPS And isPermission: $isPermission}";
  }

  GpsState copyObject({bool? isGPS, bool? isPermission}) => GpsState(
      isGPS: isGPS ?? this.isGPS,
      isPermission: isPermission ?? this.isPermission);
}
