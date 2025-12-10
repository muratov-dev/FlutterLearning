import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stateful Widget')),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: double.infinity,
        alignment: Alignment.center,
        // padding: EdgeInsets.all(50),
        margin: EdgeInsets.all(50),
        // transform: Matrix4.rotationZ(0.1),
        decoration: BoxDecoration(
          // gradient: LinearGradient(colors: [Colors.red, Colors.cyan]),
          // color: Colors.green,
          image: DecorationImage(
            image: Image.network(
              'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
            ).image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white30, width: 8),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 5),
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Text(
          'panda',
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
    );
  }
}
