import 'package:oat/ip_dto.dart';
import 'package:flutter/material.dart';

class NavigationSecond extends StatelessWidget {
  final IpDTO ip;

  const NavigationSecond({required this.ip, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscar IP'),
      ),
      body: //
    );
  }

  Widget proterty(String key, String value) {
    return Row(
      children: [
        Expanded(
          child: Text(
            key,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
