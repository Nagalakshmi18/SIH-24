// ignore_for_file: file_names

import 'package:flutter/material.dart';

class VehicleStatus extends StatelessWidget {
  const VehicleStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehicle Status'),
      ),
      body: const Center(
        child: Text('Vehicle Status Page'),
      ),
    );
  }
}
