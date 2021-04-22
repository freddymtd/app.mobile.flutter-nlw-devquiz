import 'package:devquiz/challange/challange_page.dart';
import 'package:flutter/material.dart';

import 'core/app_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChallangePage(),
    );
  }
}
