import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:zendvn_online/model/image_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  static const String routerName = '/detail_page';

  @override
  Widget build(BuildContext context) {
    final Map<dynamic, dynamic> parms = (ModalRoute.of(context)?.settings.arguments ?? {}) as Map<dynamic, dynamic>;
    final ImageModel img = parms['data'];

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
            top: 60,
            left: 20,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.white30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
