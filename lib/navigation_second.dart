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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Column(
            children: [
              proterty('IP:', ip.ip),
              const Spacer(),
              proterty('Hostname:', ip.hostname),
              const Spacer(),
              proterty('City:', ip.city),
              const Spacer(),
              proterty('Region:', ip.region),
              const Spacer(),
              proterty('Country:', ip.country),
              const Spacer(),
              proterty('Loc:', ip.loc),
              const Spacer(),
              proterty('Org:', ip.org),
              const Spacer(),
              proterty('Postal:', ip.postal),
              const Spacer(),
              proterty('Timezone:', ip.timezone),
              const Spacer(),
              proterty('Readme:', ip.readme),
            ],
          ),
        ),
      ),
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
