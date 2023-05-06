import 'package:flutter_edusoft/common/context/global_context.dart';
import 'package:flutter_edusoft/common/routes/routes.dart';
import 'package:flutter_edusoft/common/theme/theme.dart';
import 'package:flutter_edusoft/modules/IoC/dependency_containers.dart' as kiwi;
import 'package:flutter_edusoft/src/censo/infra/models/hive/nome_censo_hive_model.dart';
import 'package:flutter_edusoft/src/censo/presenter/screens/censo_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(NomeCensoHiveModelAdapter());

  await kiwi.setUp();

  // kiwi.container.resolve

  runApp(const EdusoftApp());
}

class EdusoftApp extends StatelessWidget {
  const EdusoftApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edusoft',
      routes: routes,
      navigatorKey: kiwi.container.resolve<GlobalContextHelper>().key,
      debugShowCheckedModeBanner: false,
      initialRoute: CensoScreen.id,
      theme: appTheme
    );
  }
}
