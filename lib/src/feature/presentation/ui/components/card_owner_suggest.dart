import 'package:flutter/material.dart';

class CardOwnerSuggestWidget extends StatelessWidget {
  final TextEditingController? textEditingController;

  const CardOwnerSuggestWidget({Key? key, this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Card(
          color: Colors.white,
          elevation: 10,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.black, width: 2, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController,
              style: TextStyle(fontSize: 14, fontFamily: 'Valden'),
              maxLines: 1,
              decoration: InputDecoration.collapsed(
                  hintText: "Deixe seu @nome (opcional)",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Valden')),
            ),
          )),
    );
  }
}
