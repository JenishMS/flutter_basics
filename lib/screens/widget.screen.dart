import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/sfull.widget.dart';
import 'package:flutter_basics/widgets/sless.widget.dart';

class WidgetScreen extends StatefulWidget {
  WidgetScreen(this.bgColor, {Key? key}) : super(key: key);

  final Color? bgColor;

  @override
  State<WidgetScreen> createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<WidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Screen'),
      ),
      body: Column(
        children: [
          Expanded(
              child: SfullWidget(
            bgColor: widget.bgColor!,
          )),
          Expanded(child: SlessWidget())
        ],
      ),
    );
  }
}
