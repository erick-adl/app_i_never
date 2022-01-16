import 'package:app_i_never/src/features/presentation/controller/home.controller.dart';
import 'package:app_i_never/src/features/presentation/ui/components/bordered_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 243, 1, 1),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: height - (height - 60)),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyBorderesText('Eu nunca...', 40),
                MyBorderesText('Never Have I Ever', 35),
                MyBorderesText('Drinnking game', 20,
                    color: Color.fromRGBO(53, 186, 224, 1)),
                Image.asset('assets/mugs.png', scale: 1.5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
