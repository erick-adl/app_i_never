import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

Widget MyBorderesText(String text, double size, {Color? color}) => BorderedText(
      strokeWidth: 2.0,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Valden',
          fontSize: size,
          color: color ?? Color.fromRGBO(249, 7, 148, 1),
          decoration: TextDecoration.none,
          decorationColor: Colors.red,
          shadows: [
            Shadow(
              color: Colors.black,
              blurRadius: 2.0,
              offset: Offset(2.0, 2.0),
            ),
          ],
        ),
      ),
    );
