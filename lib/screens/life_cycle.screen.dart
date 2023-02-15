import 'package:flutter/material.dart';

class LifeCycleScreen extends StatefulWidget {
  LifeCycleScreen({Key? key}) : super(key: key);

  @override
  State<LifeCycleScreen> createState() => _LifeCycleScreenState();
}

class _LifeCycleScreenState extends State<LifeCycleScreen> {
  List<String> textList = [];

  @override
  void initState() {
    textList.add('InitState Called');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      textList.add('DidChangeDependencies Called');
    });
  }

  @override
  void didUpdateWidget(covariant LifeCycleScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    textList.add('DidUpdateWidget Called');
  }

  @override
  Widget build(BuildContext context) {
    textList.add('Build Called');
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: textList.length,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(textList[index]),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          textList.add('SetState Called');
        });
      }),
    );
  }
}
