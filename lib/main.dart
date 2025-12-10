import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('GridView Widget')),
        body: GridViewCustomWidget(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Text(text, style: TextStyle(fontSize: 40)),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      scrollDirection: Axis.vertical,
      reverse: false,
      padding: EdgeInsets.all(20),
      children: [
        TextWidget(text: '1'),
        TextWidget(text: '2'),
        TextWidget(text: '3'),
        TextWidget(text: '4'),
        TextWidget(text: '5'),
        TextWidget(text: '6'),
        TextWidget(text: '7'),
        TextWidget(text: '8'),
        TextWidget(text: '9'),
        TextWidget(text: '10'),
      ],
    );
  }
}

class GridViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return TextWidget(text: index.toString());
      },
    );
  }
}

class GridViewCountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        TextWidget(text: '1'),
        TextWidget(text: '2'),
        TextWidget(text: '3'),
        TextWidget(text: '4'),
        TextWidget(text: '5'),
        TextWidget(text: '6'),
        TextWidget(text: '7'),
        TextWidget(text: '8'),
        TextWidget(text: '9'),
        TextWidget(text: '10'),
      ],
    );
  }
}

class GridViewExtentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final queryData = MediaQuery.of(context);
    print(queryData.size);
    return Container(
      width: 300,
      color: Colors.green,
      child: GridView.extent(
        maxCrossAxisExtent: 100,
        children: [
          TextWidget(text: '1'),
          TextWidget(text: '2'),
          TextWidget(text: '3'),
          TextWidget(text: '4'),
          TextWidget(text: '5'),
          TextWidget(text: '6'),
          TextWidget(text: '7'),
          TextWidget(text: '8'),
          TextWidget(text: '9'),
          TextWidget(text: '10'),
        ],
      ),
    );
  }
}

class GridViewCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      childrenDelegate: SliverChildListDelegate([
        TextWidget(text: '1'),
        TextWidget(text: '2'),
        TextWidget(text: '3'),
        TextWidget(text: '4'),
        TextWidget(text: '5'),
        TextWidget(text: '6'),
        TextWidget(text: '7'),
        TextWidget(text: '8'),
        TextWidget(text: '9'),
        TextWidget(text: '10'),
      ]),
    );
  }
}
