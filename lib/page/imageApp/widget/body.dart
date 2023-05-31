import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe/flutter_swipe.dart';
import 'package:provider/provider.dart';
import 'package:zendvn_online/model/image_model.dart';
import 'package:zendvn_online/page/imageApp/detail.dart';
import 'package:zendvn_online/provider/image_provider.dart';
import 'package:zendvn_online/utilities/helper.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<ImageModel> imgs = context.read<ImgProvider>().imgs;

    return Swiper(
      index: context.read<ImgProvider>().currentIdx,
      control: const SwiperControl(),
      pagination: const SwiperPagination(),
      itemCount: imgs.length,
      scrollDirection: Axis.vertical,
      onTap: (index) {
        Helper.printof('Swiper::onTap::$index');
        Navigator.pushNamed(
          context,
          DetailPage.routerName,
          arguments: {
            'data': imgs[index],
          },
        );
      },
      onIndexChanged: (index) {
        Helper.printof('Swiper::onIndexChanged::$index');
        context.read<ImgProvider>().setCurrentInx(index);
      },
      viewportFraction: 0.75,
      scale: 0.8,
      itemBuilder: (context, index) {
        Helper.printof('Swiper::builder');

        return CachedNetworkImage(
          imageUrl: imgs[index].image,
          progressIndicatorBuilder: (context, url, downloadProgress) => Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
          errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
          imageBuilder: (context, imageProvider) {
            Helper.printof('CachedNetworkImage(Body)::builder');

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blue,
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            imgs[index].name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
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
                                  imgs[index].description,
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                  ),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: InkWell(
                        onTap: () {
                          context.read<ImgProvider>().handleFavorite(imgs[index].id);
                        },
                        child: Consumer<ImgProvider>(
                          builder: (context, imgPro, child) {
                            bool isFavorite = imgPro.imgsFavorite.contains(imgs[index].id);

                            return Icon(
                              Icons.favorite,
                              size: 30,
                              color: isFavorite ? Colors.red : Colors.white,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
