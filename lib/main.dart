import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Column and Row Widgets')),
        body: SimpleWidget(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    required this.color,
    required this.width,
    required this.fontSize,
  });

  final String text;
  final Color color;
  final double width;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: color,
      child: Text(text, style: TextStyle(fontSize: fontSize)),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: [
        TextWidget(
          color: Colors.lightGreen,
          width: 120,
          text: 'Hello',
          fontSize: 40,
        ),
        TextWidget(
          color: Colors.deepOrange,
          width: 180,
          text: 'Beautiful',
          fontSize: 50,
        ),
        TextWidget(
          color: Colors.tealAccent,
          width: 240,
          text: 'World',
          fontSize: 60,
        ),
      ],
    );
  }
}
