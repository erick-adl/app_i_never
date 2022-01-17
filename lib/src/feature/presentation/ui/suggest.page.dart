import 'package:app_i_never/src/core/theme/colors.dart';
import 'package:app_i_never/src/feature/presentation/controller/home.controller.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/app_title.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/card_suggest.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SuggestPage extends StatefulWidget {
  const SuggestPage() : super();

  @override
  _SuggestPageState createState() => _SuggestPageState();
}

class _SuggestPageState extends State<SuggestPage> {
  late HomeController _controller;
  late TextEditingController _textEditingController;

  @override
  void initState() {
    _controller = GetIt.I.get<HomeController>();
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: customYellow,
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: height - (height - 60)),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppTitleWidget(),
                SizedBox(height: 20),
                CardSuggestWidget(
                  textEditingController: _textEditingController,
                ),
                SizedBox(height: 20),
                menuCustomElevatedButton(
                    'Enviar', () => print('Enviar frase clicked')),
                menuCustomElevatedButton(
                    'Voltar', () => print('Enviar frase clicked')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
