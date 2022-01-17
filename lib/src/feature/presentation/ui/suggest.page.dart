import 'package:app_i_never/src/core/theme/colors.dart';
import 'package:app_i_never/src/feature/presentation/controller/home.controller.dart';
import 'package:app_i_never/src/feature/presentation/controller/suggest.controller.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/app_title.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/loader.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/card_owner_suggest.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/card_suggest.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/custom_buttons.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class SuggestPage extends StatefulWidget {
  const SuggestPage() : super();

  @override
  _SuggestPageState createState() => _SuggestPageState();
}

class _SuggestPageState extends State<SuggestPage> {
  late SuggestController _controller;
  late TextEditingController _pharaseController;
  late TextEditingController _ownerController;

  @override
  void initState() {
    _controller = GetIt.I.get<SuggestController>();
    _pharaseController = TextEditingController()
      ..addListener(() {
        setState(() {});
      });
    _ownerController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _pharaseController.dispose();
    _ownerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: customYellow,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(top: height - (height - 60)),
            child: Center(
              child: Observer(builder: (_) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppTitleWidget(),
                    SizedBox(height: 20),
                    CardSuggestWidget(
                      textEditingController: _pharaseController,
                    ),
                    CardOwnerSuggestWidget(
                      textEditingController: _ownerController,
                    ),
                    SizedBox(height: 20),
                    if (_controller.isLoading)
                      ColorLoader()
                    else
                      menuCustomElevatedButton(
                          'Enviar',
                          _pharaseController.text.length > 10
                              ? () {
                                  FocusManager.instance.primaryFocus?.unfocus();
      
                                  return _controller
                                      .sendSuggestPhrase(_pharaseController.text,
                                          _ownerController.text)
                                      .then((value) {
                                    _pharaseController.clear();
                                    _ownerController.clear();
                                    value
                                        ? showDialogSucces(context).show()
                                        : showDialogFail(context).show();
                                  });
                                }
                              : null),
                    menuCustomElevatedButton(
                        'Voltar', () => Navigator.pop(context)),
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }

  AwesomeDialog showDialogFail(BuildContext context) {
    return AwesomeDialog(
        context: context,
        dialogType: DialogType.ERROR,
        animType: AnimType.TOPSLIDE,
        headerAnimationLoop: true,
        title: 'Algo deu errado',
        desc: 'Sua sugestão não foi enviada, tente novamente mais tarde.',
        btnOkOnPress: () {},
        btnOkIcon: Icons.cancel,
        btnOkColor: customBlue);
  }

  AwesomeDialog showDialogSucces(BuildContext context) {
    return AwesomeDialog(
        context: context,
        dialogType: DialogType.SUCCES,
        animType: AnimType.TOPSLIDE,
        headerAnimationLoop: true,
        title: 'Pronto!',
        desc: 'Sua sugestão foi recebida.',
        btnOkOnPress: () {},
        btnOkIcon: Icons.cancel,
        btnOkColor: customPink);
  }
}
