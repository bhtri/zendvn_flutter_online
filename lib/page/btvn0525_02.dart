import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zendvn_online/model/image_model.dart';
import 'package:zendvn_online/provider/image_provider.dart';

class BTVN052502 extends StatelessWidget {
  const BTVN052502({super.key});

  @override
  Widget build(BuildContext context) {
    final ImageModel img = context.read<ImgProvider>().imgCurrent;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: CachedNetworkImage(
                    imageUrl: img.image,
                    fit: BoxFit.cover,
                    progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(value: downloadProgress.progress),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${img.id} - ${img.name}',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 30,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: List.generate(
                          5,
                          (index) => const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 30,
                          ),
                        ),
                      ),
                      Text(
                        img.description,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 20,
            left: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_back),
            ),
          )
        ],
      ),
    );
  }
}
