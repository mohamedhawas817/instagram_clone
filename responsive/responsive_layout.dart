import 'package:flutter/material.dart';
import '../utilies/dimantion.dart';


class ResponseLayout extends StatelessWidget {

  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  ResponseLayout(this.webScreenLayout, this.mobileScreenLayout);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraints) {
      if(contraints.maxWidth > webScreenSize) {
        //web screen
        return webScreenLayout;
      }
      //mobile screen
      return mobileScreenLayout;

    });
  }
}
