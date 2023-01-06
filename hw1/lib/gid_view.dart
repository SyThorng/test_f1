import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

List<String> img = [
  'https://cdn.mos.cms.futurecdn.net/Zo3CVx2aTiykwz23FZVk3a.jpg',
  'https://assets.reedpopcdn.com/-1436853116174.jpg/BROK/thumbnail/1600x900/format/jpg/quality/80/-1436853116174.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2KvQTOmn7sRBft1YhBrBlcG9FlNcmNq6Mk3cIjcfpuND4fq_EZQqjTb7frX7HrxKPZJ0&usqp=CAU',
  'https://m.media-amazon.com/images/M/MV5BOGQxMGM4NzItYjkwMC00MGQ3LThhNWEtYjFkZTQ2ZDg0MjI2XkEyXkFqcGdeQXVyMTA0MTM5NjI2._V1_.jpg',
  'https://preview.redd.it/b6vpeg7pqk481.jpg?width=640&crop=smart&auto=webp&s=dee6a394d5de943c0d8f0a21e49d955334a85d4c',
  'https://eu-images.contentstack.com/v3/assets/bltbc1876152fcd9f07/blt693245f247d5a6e9/61e0250a0714684092a6096d/god_of_war_3.jpg'
];

class dataGidview extends StatelessWidget {
  dataGidview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      // ),
      body: GridView.count(
        crossAxisCount: 1,
        children: List.generate(
          img.length,
          (index) => Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(img[index]))),
            ),
          ),
        ),
      ),
    );
  }
}

// Padding(
//             padding: const EdgeInsets.all(10),
//             child: Container(
//               height: 100,
//               width: 100,
//               decoration: BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.circular(10),
//                   image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: NetworkImage(
//                           'https://cdn.mos.cms.futurecdn.net/Zo3CVx2aTiykwz23FZVk3a.jpg'))),
//             ),
//           ),
