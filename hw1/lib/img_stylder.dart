import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:hw1/gid_view.dart';
import 'package:hw1/test1/widget_inclass.dart';

class img_stylder extends StatelessWidget {
  const img_stylder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: SafeArea(
            child: Column(
      children: [
        ImageSlideshow(
          initialPage: 0,
          isLoop: true,
          autoPlayInterval: 1000,
          children: List.generate(
              out1.length,
              (index) => Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                img[index],
                              ))),
                    ),
                  )),
        ),
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(img[1]), fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              top: -10,
              left: -20,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 236, 20, 4),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(img[1]), fit: BoxFit.cover)),
              ),
            ),
            Positioned(
                right: -10,
                bottom: 10,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                      image: DecorationImage(
                          image: NetworkImage(img[3]), fit: BoxFit.cover)),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(60, 70, 0, 0),
              width: 100,
              height: 100,
              color: Colors.red,
            )
          ],
        )
      ],
    )));
  }
}

//  body: SafeArea(
//         child: Image.network(
//             'https://eu-images.contentstack.com/v3/assets/bltbc1876152fcd9f07/blt693245f247d5a6e9/61e0250a0714684092a6096d/god_of_war_3.jpg'),
//       ),
//     );
