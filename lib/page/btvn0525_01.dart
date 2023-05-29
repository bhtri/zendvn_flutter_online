import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe/flutter_swipe.dart';
import 'package:provider/provider.dart';
import 'package:zendvn_online/model/image_model.dart';
import 'package:zendvn_online/page/btvn0525_02.dart';
import 'package:zendvn_online/provider/image_provider.dart';
import 'package:zendvn_online/utilities/helper.dart';

class BTVN052501 extends StatefulWidget {
  const BTVN052501({super.key});

  @override
  State<BTVN052501> createState() => _BTVN052501State();
}

class _BTVN052501State extends State<BTVN052501> {
  Widget buildtest(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/img01.jpg'),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CachedNetworkImage(
                  imageUrl: 'http://placeimg.com/640/480/business',
                  progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(value: downloadProgress.progress),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageBuilder: (context, imageProvider) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'veniam officia placeat',
                              style: TextStyle(
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
                                  const Text(
                                    'Sunt harum rerum dolorem quia. Qui quasi architecto at sequi aut. Necessitatibus consequatur aut. Sint consequatur sed accusamus.',
                                    style: TextStyle(
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
                    );
                  },
                ),
              );
            },
            itemCount: 3,
            // pagination: const SwiperPagination(),
            // control: const SwiperControl(),
            scrollDirection: Axis.vertical,
            onTap: (index) {
              Helper.printof('Swiper::onTap::$index');
            },
            onIndexChanged: (index) {
              Helper.printof('Swiper::onIndexChanged::$index');
            },
            viewportFraction: 0.75,
            scale: 0.8,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<ImageModel>>(
        future: Provider.of<ImgProvider>(context, listen: false).readJson(),
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

          Helper.printof('FutureBuilder::builder');

          return CachedNetworkImage(
            imageUrl: context.read<ImgProvider>().imgCurrent.image,
            progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(value: downloadProgress.progress),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            imageBuilder: (context, imageProvider) {
              Helper.printof('CachedNetworkImage(Background)::builder');
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover, image: imageProvider),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Swiper(
                    index: context.read<ImgProvider>().currentIdx,
                    control: const SwiperControl(),
                    itemCount: imgs.length,
                    scrollDirection: Axis.vertical,
                    onTap: (index) {
                      Helper.printof('Swiper::onTap::$index');
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BTVN052502(),
                      ));
                    },
                    onIndexChanged: (index) {
                      Helper.printof('Swiper::onIndexChanged::$index');
                      Provider.of<ImgProvider>(context, listen: false).setCurrentInx(index);
                    },
                    viewportFraction: 0.75,
                    scale: 0.8,
                    itemBuilder: (context, index) {
                      Helper.printof('Swiper::builder');

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: CachedNetworkImage(
                          imageUrl: imgs[index].image,
                          progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(value: downloadProgress.progress),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                          imageBuilder: (context, imageProvider) {
                            Helper.printof('CachedNetworkImage(Body)::builder');

                            return Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
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
                              child: Padding(
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
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
