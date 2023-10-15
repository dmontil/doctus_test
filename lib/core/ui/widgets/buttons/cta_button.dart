
import 'package:doctus_test/core/ui/styles/app_spaces.dart';
import 'package:flutter/material.dart';

class CtaButton extends StatelessWidget {
  const CtaButton(
      {required this.onPressed, required this.text, required this.color, super.key,
      this.textColor = Colors.white,});
  final VoidCallback? onPressed;
  final String text;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 3,
              spreadRadius: 3,
            )
          ],),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: color,
          padding: const EdgeInsets.all(Sizes.p16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
        ),
      ),
    );
  }
}
