import 'package:calculator_app/components/my_button.dart';
import 'package:flutter/material.dart';

class ColoredButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const ColoredButton({super.key, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: onPress,
        splashColor: Colors.blue,
        borderRadius: BorderRadius.circular(13),
        child: Container(
          height: 50,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: const Color(0xffb6cce0)),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
