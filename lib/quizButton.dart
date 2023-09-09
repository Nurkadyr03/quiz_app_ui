import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({
    Key? key,
    required this.isTrue,
  }) : super(key: key);

  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 30,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(isTrue ? 'туура' : 'туура эмес',
            style: const TextStyle(color: Colors.white)),
        style: ElevatedButton.styleFrom(
          primary: isTrue ? Color(0xff4cAF52) : Color(0xffF54335),
        ),
      ),
    );
  }
}
