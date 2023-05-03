import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String avatar;
  const AvatarWidget({super.key, required this.avatar});
  @override
  Widget build(BuildContext context) {
      return CachedNetworkImage(
        imageUrl: avatar,
        imageBuilder: (context, imageProvider) =>Container(
          width: 95,
          height: 95,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover
              )
          ),
        ),
        errorWidget: (context, url, error) =>Container(
          width: 95,
          height: 95,
          margin: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: const Icon(Icons.image_not_supported_sharp,size: 40,),
        ),
        placeholder: (context, url) =>Container(
          width: 95,
          height: 95,
          margin: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
            color: Colors.grey

          ),
        ) ,
      );
  }
}