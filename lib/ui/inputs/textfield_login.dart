import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  final Function(String)? onChanged;

  const TextFieldLogin({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
      child: TextField(
        onChanged: onChanged,
      ),
    );
  }
}
