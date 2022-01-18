import 'package:app_i_never/src/core/route/route.dart';
import 'package:app_i_never/src/core/theme/colors.dart';
import 'package:app_i_never/src/feature/presentation/controller/home.controller.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/app_title.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/bordered_text.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/custom_buttons.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/social_media.dart';
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
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: customYellow,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppTitleWidget(),
              Image.asset('assets/mugs.png', scale: 1.8),
              SizedBox(height: 20),
              menuCustomElevatedButton('Jogar', () => print('Jogar clicked')),
              // menuCustomElevatedButton('Categorias', () => print('Categorias clicked')),
              menuCustomElevatedButton('Sugerir frase',
                  () => Navigator.pushNamed(context, AppRoutes.suggestPage)),
            ],
          ),
        ),
      ),
    );
  }
}
