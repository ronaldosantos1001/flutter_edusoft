import 'package:flutter_edusoft/common/routes/DTO/censo_details_argument.dart';
import 'package:flutter_edusoft/src/censo/presenter/screens/censo_details_screen.dart';
import 'package:flutter_edusoft/src/censo/presenter/screens/censo_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> routes = {
  CensoScreen.id: (BuildContext context) => const CensoScreen(),
  /* Create a argument resolver method to do the auto-redirect */
  CensoDetailsScreen.id: (BuildContext context) => ModalRoute.of(context)?.settings.arguments != null ? CensoDetailsScreen(censo: ModalRoute.of(context)!.settings.arguments as CensoDetailsArgument) : const CensoScreen()
};