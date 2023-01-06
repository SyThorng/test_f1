import 'package:flutter/material.dart';

// ignore: camel_case_types
class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context),
        automaticallyImplyLeading: false,
        title: Text(
          'Page Title',
          // style: FlutterFlowTheme.of(context)(
          //   fontFamily: 'Poppins',
          //   color: Colors.white,
          //   fontSize: 22,
          // ),
        ),
        flexibleSpace: FlexibleSpaceBar(
          background: Image.network(
            'https://media.wired.com/photos/59345e019a93607bd17c86b4/master/pass/bloodandmetal.jpg',
            fit: BoxFit.cover,
          ),
        ),
        centerTitle: false,
        elevation: 2,
      ),
      body: // Generated code for this Column Widget...
          Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ListTile(
            title: Text(
              'Lorem ipsum dolor...',
              style: FlutterFlowTheme.of(context),
            ),
            subtitle: Text(
              'Lorem ipsum dolor...',
              style: FlutterFlowTheme.of(context),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF303030),
              size: 20,
            ),
            tileColor: const Color(0xFFF5F5F5),
            dense: false,
          ),
          ListTile(
            title: Text(
              'Lorem ipsum dolor...',
              style: FlutterFlowTheme.of(context),
            ),
            subtitle: Text(
              'Lorem ipsum dolor...',
              style: FlutterFlowTheme.of(context),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF303030),
              size: 20,
            ),
            tileColor: const Color(0xFF0F0606),
            dense: false,
          ),
          // FlutterFlowVideoPlayer(
          //   path:
          //       'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4',
          //   videoType: VideoType.network,
          //   autoPlay: false,
          //   looping: true,
          //   showControls: true,
          //   allowFullScreen: true,
          //   allowPlaybackSpeedMenu: false,
          // ),
        ],
      ),
    );
  }
}

class FlutterFlowVideoPlayer {}

class FlutterFlowTheme {
  static of(BuildContext context) {}
}
