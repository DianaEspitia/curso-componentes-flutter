import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageURL;
  final String? imageName;
  const CustomCardType2({Key? key, required this.imageURL, this.imageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, //sirve para cortar o adecuar el contenidos
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15)),
      elevation: 30,
      shadowColor: AppTheme.primaryColor.withOpacity(0.6),
      child: Column(
        children: [
          FadeInImage(
            image:  NetworkImage(imageURL),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity, //toma el valor del card - image como el infinity
            height: 230,
            fit: BoxFit.cover, //para que la imagen se adapte el tamaño del card
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          // Container(
          //   alignment: AlignmentDirectional.centerEnd,
          //   padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
          //   child: Text(imageName ?? 'No title'),
          // )

          if (imageName != null)
            Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(imageName!),
          )

        ]
      ),
    );
  }
}