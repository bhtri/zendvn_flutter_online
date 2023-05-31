import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zendvn_online/model/image_model.dart';
import 'package:zendvn_online/provider/image_provider.dart';
import 'package:zendvn_online/utilities/helper.dart';

class FavoriteListPage extends StatelessWidget {
  const FavoriteListPage({super.key});

  static const String routerName = '/image_favorite_list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder<List<ImageModel>>(
            future: context.read<ImgProvider>().getFavoriteList(),
            initialData: const [],
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              }
              if (!snapshot.hasData) {
                return const Center(child: Text('No data'));
              }

              List<ImageModel> imgs = snapshot.data ?? [];
              if (imgs.isEmpty) {
                return const Center(child: Text('No data'));
              }

              Helper.printof('FavoriteListPage::FutureBuilder::builder');

              return ListView.separated(
                  itemBuilder: (context, index) {
                    return CachedNetworkImage(
                      imageUrl: imgs[index].image,
                      progressIndicatorBuilder: (context, url, downloadProgress) =>
                          Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                      errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                      imageBuilder: (context, imageProvider) {
                        return AspectRatio(
                          aspectRatio: 3,
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              image: DecorationImage(fit: BoxFit.cover, image: imageProvider),
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Text(
                              imgs[index].name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 20);
                  },
                  itemCount: imgs.length);
            },
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
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
