import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderOffer extends StatelessWidget {
  const SliderOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CarouselSlider.builder(
        itemCount: 2,
        itemBuilder: (context, index, page) =>
            Image.asset('assets/images/ba.jpg'),
        options: CarouselOptions(
          height: 100,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
          // autoPlay: false,
        ),
      ),
    );
    // return Expanded(
    //   child: CarouselSlider(options: CarouselOptions(
    //     height: 250,
    //     initialPage: 0,
    //     viewportFraction: 1.0,
    //     enableInfiniteScroll: true,
    //     reverse: false,
    //     autoPlay: true,
    //     autoPlayCurve: Curves.fastOutSlowIn,
    //     autoPlayInterval: const Duration(seconds: 3),
    //     autoPlayAnimationDuration: const Duration(seconds: 1),
    //     scrollDirection: Axis.horizontal,
    //   ), items: const [
    //   Image(
    //   image:AssetImage('ba.jbg'),
    //   width: double.infinity,
    //   fit: BoxFit.cover,
    //   ),
    //     Image(
    //       image:AssetImage('ba.jbg'),
    //       width: double.infinity,
    //       fit: BoxFit.cover,
    //     ),
    //     Image(
    //       image:AssetImage('ba.jbg'),
    //       width: double.infinity,
    //       fit: BoxFit.cover,
    //     ),
    //   ],),
    // );
  }
}
