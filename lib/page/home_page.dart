import 'package:flutter/material.dart';
import 'package:projectart/model/photos.dart';
import 'package:projectart/page/photo_details_page.dart';

class HomePage extends StatelessWidget {
  static const route = "/";
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Column(
          children: [
            const Text(
              "ART",
              style: TextStyle(letterSpacing: 10),
            ),
            const Text(
              "Dove l'uomo tocca il cielo!",
              style: TextStyle(fontSize: 14, color: Colors.white54),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemCount: photos.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  PhotoDetailsPage.route,
                  arguments: PhotoDetailPageArg(photoUrl: photos[index]),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  photos[index],
                  fit: BoxFit.cover,
                ),
              ))),
    );
  }
}
