import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zendvn_online/model/image_model.dart';
import 'package:zendvn_online/page/imageApp/image_favorite_list.dart';
import 'package:zendvn_online/page/imageApp/widget/body.dart';
import 'package:zendvn_online/provider/image_provider.dart';
import 'package:zendvn_online/utilities/helper.dart';
import 'package:badges/badges.dart' as badges;

class ImageApp extends StatelessWidget {
  const ImageApp({super.key});

  static const String routerName = '/image_app_main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<ImageModel>>(
        future: context.read<ImgProvider>().readJson(),
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

          Helper.printof('ImageApp::FutureBuilder::builder');

          return Consumer<ImgProvider>(
            builder: (context, imgPro, child) {
              return CachedNetworkImage(
                imageUrl: imgPro.imgCurrent.image,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
                imageBuilder: (context, imageProvider) {
                  Helper.printof('CachedNetworkImage(Background)::builder');
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.cover, image: imageProvider),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Stack(children: [
                        const Body(),
                        Positioned(
                          top: 40,
                          left: 30,
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, FavoriteListPage.routerName);
                            },
                            child: badges.Badge(
                              badgeAnimation: const badges.BadgeAnimation.fade(),
                              badgeContent: Text(
                                imgPro.imgsFavorite.length.toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                              child: const Icon(
                                Icons.favorite,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
