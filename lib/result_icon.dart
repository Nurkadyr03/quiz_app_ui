import 'package:flutter/material.dart';

class ResultIcon extends StatelessWidget {
  const ResultIcon({
    Key? key,
    required this.isTrue,
  }) : super(key: key);
  final bool isTrue;
  @override
  Widget build(BuildContext context) {
    return Icon(
      isTrue ? Icons.check : Icons.close,
      color: isTrue ? Colors.green : Colors.red,
      size: 35,
    );
  }
}
