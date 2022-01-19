import 'package:app_i_never/src/core/theme/colors.dart';
import 'package:app_i_never/src/feature/presentation/controller/home.controller.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/bordered_text.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/card_suggest.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/custom_buttons.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class GamePage extends StatefulWidget {
  const GamePage() : super();

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late HomeController _controller;
  late SwiperController _swiperController;

  @override
  void initState() {
    _controller = GetIt.I.get<HomeController>();
    _swiperController = SwiperController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customYellow,
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 20, vertical: MediaQuery.of(context).padding.top + 50),
        child: Center(
          child: Column(
            children: [
              customBorderesText('Eu nunca...', 40),
              SizedBox(height: 10),
              CardPhrasesWidget(
                  controller: _controller, swiperController: _swiperController),
              Spacer(),
              menuCustomElevatedButton(
                  'Próximo', () => _swiperController.next()),
              menuCustomElevatedButton(
                  'Finalizar', () => Navigator.pop(context)),
            ],
          ),
        ),
      ),
    );
  }
}

class CardPhrasesWidget extends StatelessWidget {
  const CardPhrasesWidget({
    Key? key,
    required HomeController controller,
    required SwiperController swiperController,
  })  : _controller = controller,
        _swiperController = swiperController,
        super(key: key);

  final HomeController _controller;
  final SwiperController _swiperController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Card(
              color: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.black, width: 2, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customBorderesText(_controller.getList[index].text, 25,
                        color: customBlue),
                    Spacer(),
                    Container(
                      height: 2,
                      color: Colors.black,
                    ),
                    SizedBox(height: 10),
                    customBorderesText(_controller.getList[index].owner, 20),
                  ],
                ),
              ));
        },
        itemCount: _controller.getList.length,
        itemWidth: 400.0,
        itemHeight: 300.0,
        layout: SwiperLayout.TINDER,
        loop: false,
        controller: _swiperController,
      ),
    );
  }
}
