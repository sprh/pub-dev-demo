import 'package:eo_color/eo_color.dart';
import 'package:flutter/material.dart';

class CalculatorWidget extends StatefulWidget {
  const CalculatorWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {
  int currentValue = 0;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text(
              currentValue.toString(),
              style: const TextStyle(fontSize: 50),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () => setState(() => currentValue -= 1),
                icon: const Icon(Icons.remove_circle_outline),
                color: const Orange.bitDarker().color,
              ),
              IconButton(
                onPressed: () => setState(() => currentValue += 1),
                icon: const Icon(Icons.add_circle_outline),
                color: const Orange.bitDarker().color,
              ),
            ],
          )
        ],
      );
}
