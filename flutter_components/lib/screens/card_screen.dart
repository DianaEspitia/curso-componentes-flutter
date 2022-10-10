import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
           CustomCardType1(),
           SizedBox(height: 10,),
           CustomCardType2(imageURL: 'https://www.nasa.gov/sites/default/files/thumbnails/image/web_first_images_release_0.png', imageName: "Universo",),
           SizedBox(height: 10,),
           CustomCardType2(imageURL: 'https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/iss067e362302.jpg', imageName: "ISS",),
           SizedBox(height: 10,),
           CustomCardType2(imageURL: 'https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/52291737656_388a8df7b5_o.jpg', imageName: "Rocket",),
           SizedBox(height: 10,),
           CustomCardType2(imageURL: 'https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/pia23805.jpg',),
           SizedBox(height: 50,)
      ],
      )
    );
  }
}