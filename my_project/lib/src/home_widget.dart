import 'package:eo_color/eo_color.dart';
import 'package:flutter/material.dart';
import 'package:my_package/my_package.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor:
            const Orange.veryLight().color, // From eo_color library
        appBar: AppBar(
          title: const Text('Demo'),
        ),
        body: const Center(
          child: CalculatorWidget(),
        ),
      );
}
