import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomScrollBehavior extends MaterialScrollBehavior{
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    // * -- enable scroll with mouse in web and desktop
    PointerDeviceKind.mouse,
    // * -- enable scroll with trackpad in mac and ipad
    PointerDeviceKind.trackpad,
    // * -- enable scroll with stylus pen in tabled and ipad
    PointerDeviceKind.stylus,
    // * etc...
  };
}
