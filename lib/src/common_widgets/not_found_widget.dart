import 'package:flutter/material.dart';

class NotFoundWidget extends StatelessWidget {
  const NotFoundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 24),
      child: Text(
        'Not found!',
        style: TextStyle(
          fontSize: 20,
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}