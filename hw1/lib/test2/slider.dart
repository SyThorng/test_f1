import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:hw1/gid_view.dart';
import 'package:hw1/test2/class.dart';

class sli extends StatelessWidget {
  const sli({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ImageSlideshow(
                isLoop: true,
                initialPage: 0,
                autoPlayInterval: 4000,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(call1[1]['img1']))),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(call1[4]['img1']))),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(call1[3]['img1']),
                            fit: BoxFit.cover)),
                  )
                ])
          ],
        ),
      ),
    );
  }
}
