import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class PhotoDetailsPage extends StatelessWidget {
  static const route = "/photo/details";

  final PhotoDetailPageArg args;
  const PhotoDetailsPage({required this.args});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(child:ExtendedImage.network(
        args.photoUrl,
        mode: ExtendedImageMode.gesture,
      )),
    );
  }
}

class PhotoDetailPageArg {
  final String photoUrl;
  const PhotoDetailPageArg({
    required this.photoUrl,
  });
}
