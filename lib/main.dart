import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('ImageWidget')),
        body: ImageWidget(),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final String assetNamePath = 'assets/images/image1.jpg';
    final String assetNameSVG = 'assets/icon.svg';
    final String assetNameUrl = 'https://i.imgflip.com/1bip.jpg';

    // AssetImage imageFromAssetImage = AssetImage(assetNamePath);
    // Image imageFromAsset = Image.asset(assetNamePath, fit: BoxFit.cover);
    // Image imageFromNetwork = Image.network(assetNameUrl, fit: BoxFit.cover);
    // Image changedImage = Image(
    //   image: imageFromNetwork.image,
    //   color: Colors.green,
    //   colorBlendMode: BlendMode.color,
    // );

    SvgPicture imageFromAssetSvg = SvgPicture.asset(assetNameSVG, fit: BoxFit.cover);

    return Container(
      constraints: BoxConstraints.expand(height: double.infinity),
      child: imageFromAssetSvg,
    );
  }
}
