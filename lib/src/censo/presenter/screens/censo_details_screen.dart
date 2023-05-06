import 'package:flutter_edusoft/common/routes/DTO/censo_details_argument.dart';
import 'package:flutter/material.dart';

class CensoDetailsScreen extends StatelessWidget {
  static const String id = 'screens/censo/details';

  final CensoDetailsArgument censo;

  const CensoDetailsScreen({ Key? key, required this.censo }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(censo.censo.title)),
      body: Center(child: censo.censo.detailsCard(context)),
    );
  }
}
