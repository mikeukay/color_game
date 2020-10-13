import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final Function onPressed;

  const CustomButton({Key key,
    @required this.text,
    @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        text,
        style: const TextStyle(fontSize: 18.0),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      color: Colors.red,
      textColor: Colors.white,
      padding: const EdgeInsets.all(8.0),
      onPressed: onPressed,
    );
  }
}
