import 'package:app_i_never/src/core/theme/colors.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/bordered_text.dart';
import 'package:flutter/material.dart';

class AppTitleWidget extends StatelessWidget {
  const AppTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customBorderesText('Eu nunca...', 35),
        customBorderesText('Never Have I Ever', 30),
        customBorderesText('Drinnking game', 20, color: customBlue),
      ],
    );
  }
}
