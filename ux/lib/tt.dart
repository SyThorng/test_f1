import 'package:ux/page2.dart';

import 'package:flutter/material.dart'
    show
        AppBar,
        AutovalidateMode,
        BuildContext,
        Colors,
        Column,
        Container,
        FocusScope,
        Form,
        FormState,
        GestureDetector,
        GlobalKey,
        Key,
        MainAxisSize,
        SafeArea,
        Scaffold,
        ScaffoldState,
        State,
        StatefulWidget,
        Text,
        Widget;
// ignore: depend_on_referenced_packages
// ignore: depend_on_referenced_packages

class tt extends StatefulWidget {
  const tt({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => throw UnimplementedError();

  // @override
  // ignore: library_private_types_in_public_api
  // Future<_HomePageWidgetState> createState() async => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<tt> {
  final formKey1 = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: Form(
          key: formKey3,
          autovalidateMode: AutovalidateMode.disabled,
          child: Container(),
        ),
        title: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Page Title',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
            Form(
              key: formKey2,
              autovalidateMode: AutovalidateMode.disabled,
              child: Container(),
            ),
          ],
        ),
        actions: [
          Form(
            key: formKey1,
            autovalidateMode: AutovalidateMode.disabled,
            child: Container(),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          // child: Column(
          //   mainAxisSize: MainAxisSize.max,
          //   children: [
          //     Expanded(
          //       child: MasonryGridView.count(
          //         crossAxisCount: 2,
          //         crossAxisSpacing: 10,
          //         mainAxisSpacing: 10,
          //         itemCount: 0,
          //         itemBuilder: (context, index) {
          //           return [][index]();
          //         },
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}

class MasonryGridView {}
