import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_app/blocs/gps/bloc.dart';

class GPSAccessScreen extends StatelessWidget {
  const GPSAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: BlocBuilder<GpsBloc, GpsState>(builder: ((context, state) {
        return state.isGPS ? const _AccessButton() : const _EnableGPSMessage();
      }))),
    );
  }
}

class _AccessButton extends StatelessWidget {
  const _AccessButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Es necesario el acceso al GPS"),
        MaterialButton(
            onPressed: () {},
            color: Colors.black,
            shape: const StadiumBorder(),
            elevation: 0,
            child: const Text(
              "Solicitar Acceso",
              style: TextStyle(color: Colors.white),
            ))
      ],
    );
  }
}

class _EnableGPSMessage extends StatelessWidget {
  const _EnableGPSMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Debe habilitar permisos",
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
    );
  }
}
