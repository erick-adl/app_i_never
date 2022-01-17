import 'package:app_i_never/src/core/theme/colors.dart';
import 'package:app_i_never/src/feature/presentation/ui/components/bordered_text.dart';
import 'package:flutter/material.dart';

Widget menuCustomElevatedButton(String text) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: customBorderesText(text, 25, color: Colors.white),
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(270, 60),
            primary: customPink,
            shadowColor: Colors.black,
            elevation: 10,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.black, width: 2, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(10))),
      ),
    );
