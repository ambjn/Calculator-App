import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.color,
      this.textColor,
      required this.buttonText,
      this.buttonTapped})
      : super(key: key);
  final color;
  final textColor;
  final String buttonText;
  final buttonTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: color,
              child: TextButton(
                onPressed: buttonTapped,
                child: Text(
                  buttonText,
                  style: TextStyle(color: textColor, fontSize: 20),
                ),
              ),
            )),
      ),
    );
  }
}
