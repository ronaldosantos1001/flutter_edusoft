import 'package:flutter/material.dart';

class GlobalContextHelper{
 
  final GlobalKey<NavigatorState> _key = GlobalKey<NavigatorState>();

  GlobalContextHelper();

  GlobalKey<NavigatorState> get key => _key;
  BuildContext? get context => _key.currentContext;
}