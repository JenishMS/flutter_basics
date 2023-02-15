import 'package:flutter/material.dart';
import 'dart:math' as math;

class SfullWidget extends StatefulWidget {
  SfullWidget({required this.bgColor, Key? key}) : super(key: key);

  final Color bgColor;

  @override
  State<SfullWidget> createState() => _SfullWidgetState();
}

class _SfullWidgetState extends State<SfullWidget> {
  late Color bgColor;

  @override
  void initState() {
    super.initState();
    bgColor = widget.bgColor;
  }

  _changeBackground() {
    setState(() {
      bgColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Center(
        child: InkWell(
          onTap: () {
            _changeBackground();
          },
          child: const Text('Click to Change Background Color'),
        ),
      ),
    );
  }
}
