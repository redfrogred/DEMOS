// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/app_provider.dart';


class Sandbox extends StatefulWidget {
  const Sandbox({Key? key}) : super(key: key);

  @override
  State<Sandbox> createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  @override
  Widget build(BuildContext context) {
    return const SandboxPage();
  }
}

class SandboxPage extends StatelessWidget {
  const SandboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar (
        title: const Text('Sandbox '),
      ),
      body: Center(
        child: Text('Sandbox'),
      ),
    );
  }
}