import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: AppScrollBehavior(),
      home: Scaffold(
        appBar: AppBar(title: const Text('PageView Widget')),
        body: PageViewCustomWidget(),
      ),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}

class PageViewWidget extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      // pageSnapping: false,
      // physics: BouncingScrollPhysics(),
      controller: controller,
      onPageChanged: (number) {
        if (kDebugMode) {
          print("Page number: $number");
        }
      },
      children: [
        Container(
          color: Colors.red,
          child: Center(child: Text('Stop!')),
        ),
        Container(
          color: Colors.yellow,
          child: Center(child: Text('Ready?')),
        ),
        Container(
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Go!", style: TextStyle(fontSize: 40)),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                  // controller.jumpToPage(0);
                  controller.animateToPage(
                    0,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeIn,
                  );
                },
                child: Center(child: Text('Reload!')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PageViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: index % 2 == 0 ? Colors.red : Colors.yellow,
          alignment: Alignment.center,
          child: Text('Page $index'),
        );
      },
    );
  }
}

class PageViewCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.custom(
      childrenDelegate: SliverChildListDelegate([
        Text('1'),
        Text('2'),
        Text('3'),
      ]),
    );
  }
}
