import 'package:app_i_never/src/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MySocialMediaWidget extends StatelessWidget {
  const MySocialMediaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(FontAwesomeIcons.github, size: 25, color: customPink),
            SizedBox(width: 25),
            FaIcon(FontAwesomeIcons.linkedin, size: 25, color: customPink),
            SizedBox(width: 25),
            FaIcon(FontAwesomeIcons.instagram, size: 25, color: customPink),
            SizedBox(width: 25),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
