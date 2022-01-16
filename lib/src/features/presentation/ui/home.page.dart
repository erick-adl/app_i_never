import 'package:app_i_never/src/features/presentation/controller/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage() : super();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController _controller;

  @override
  void initState() {
    _controller = GetIt.I.get<HomeController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('teste'),
      ),
      body: Container(
        child: Center(
          child: Text('teste'),
        ),
      ),
    );
  }
}
