import 'package:flutter/material.dart';
import 'package:responsive_ui/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {

  // Two widget for two different platform
  final Widget mobileBody;
  final Widget desktopBody;

  // The constructor of those two widget
  ResponsiveLayout({required this.desktopBody, required this.mobileBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth < mobileWidth)
          {
            return mobileBody;
          }
          else
          {
            return desktopBody;
          }
        }
    );
  }
}
