import 'dart:convert';
import 'package:oat/ip_dto.dart';
import 'package:flutter/material.dart';
import 'navigation_second.dart';
import 'package:http/http.dart' as http;

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});
  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  bool _isLoading = false;

  @override
  void initState() {
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscar IP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              ElevatedButton.icon(
                icon: _isLoading
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : const Icon(Icons.add),
                label: Text(
                  _isLoading ? 'Carregando...' : 'Buscar IP',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                onPressed: () {
                  _navigate(context);
                },
                style:
                    ElevatedButton.styleFrom(fixedSize: const Size(300, 100)),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Future _navigate(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });
    final ip = await _getIpAsync();
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => NavigationSecond(ip: ip)),
    );

    setState(() {
      _isLoading = false;
    });
  }

  Future<IpDTO> _getIpAsync() async {
    var response =
        await http.get(Uri.parse('https://api.ipify.org/?format=json'));
    final json = jsonDecode(response.body);
    return await _getMoreInformationAsync(json['ip'].toString());
  }

  Future<IpDTO> _getMoreInformationAsync(String ip) async {
    var response = await http.get(Uri.parse('https://ipinfo.io/$ip/geo'));
    final json = jsonDecode(response.body);
    return IpDTO.fromJson(json);
  }
}
