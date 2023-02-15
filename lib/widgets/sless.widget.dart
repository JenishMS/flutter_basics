import 'package:flutter/material.dart';

class SlessWidget extends StatelessWidget {
  const SlessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: const Center(
        child: Text('Stateless Widget',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.yellow)),
      ),
    );
  }
}
