import 'package:app_i_never/src/core/theme/colors.dart';
import 'package:app_i_never/src/feature/presentation/controller/home.controller.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/bordered_text.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/custom_buttons.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/social_media.dart';
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
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: customYellow,
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: height - (height - 60)),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customBorderesText('Eu nunca...', 35),
                customBorderesText('Never Have I Ever', 30),
                customBorderesText('Drinnking game', 20, color: customBlue),
                Image.asset('assets/mugs.png', scale: 1.8),
                SizedBox(height: 20),
                menuCustomElevatedButton('Jogar', () => print('Jogar clicked')),
                menuCustomElevatedButton('Categorias', () => print('Categorias clicked')),
                menuCustomElevatedButton(
                    'Sugerir frase', () => print('Sugerir frase clicked')),
                Spacer(),
                MySocialMediaWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
