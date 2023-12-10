import "package:flutter/material.dart";

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  // super.key can be written like this as key is a named parameter
  // const StyledText(this.text, Key key) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
