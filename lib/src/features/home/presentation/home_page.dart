import 'package:flutter/material.dart';
import 'package:react_conf/src/common_widgets/custom_button.dart';
import 'package:react_conf/src/config/constants/strings.dart';
import 'package:react_conf/src/features/home/presentation/widgets/heading_text_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringData.appName),
      ),
      body: Center(
        child: Column(
          children: [
            CustomTextButton(
              btnText: 'Custom Button',
              onTapBtn: () {},
            ),
            const HeadingTextTile(
              text: 'Demo Widgt',
            )
          ],
        ),
      ),
    );
  }
}
