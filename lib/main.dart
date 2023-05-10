import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_app/blocs/gps/gps_bloc.dart';
import 'package:map_app/screen/gps_access_screen.dart';

void main() {
  runApp(MultiBlocProvider(
      providers: [BlocProvider(create: (ontext) => GpsBloc())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Map GPS', home: GPSAccessScreen());
  }
}
