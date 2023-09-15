import 'package:flutter/material.dart';

// ignore: must_be_immutable
class QuizButton extends StatelessWidget {
  QuizButton({
    Key? key,
    required this.baskanda,
    required this.tuuraButtonbu,
  }) : super(key: key);

  final bool tuuraButtonbu;
  final void Function(bool) baskanda;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 30,
      child: ElevatedButton(
        onPressed: () => baskanda(tuuraButtonbu),
        child: Text(tuuraButtonbu ? 'туура' : 'туура эмес',
            style: const TextStyle(color: Colors.white)),
        style: ElevatedButton.styleFrom(
          backgroundColor: tuuraButtonbu ? const Color(0xff4cAF52) : const Color(0xffF54335),
        ),
      ),
    );
  }
}
